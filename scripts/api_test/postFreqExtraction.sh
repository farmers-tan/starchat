#!/usr/bin/env bash

QUERY=${1:-"good morning, may I ask you a question? Thank you!"}
PORT=${2:-8888}
INDEX_NAME=${4:-index_english_0}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST "http://localhost:${PORT}/${INDEX_NAME}/extraction/frequencies" -d "
{
	\"text\": \"${QUERY}\",
	\"commonOrSpecificSearchPrior\": \"COMMON\",
	\"commonOrSpecificSearchObserved\": \"IDXSPECIFIC\",
	\"observedDataSource\": \"KNOWLEDGEBASE\",
	\"fieldsPrior\": \"all\",
	\"fieldsObserved\": \"all\",
	\"tokenizer\": \"space_punctuation\"
}
"

