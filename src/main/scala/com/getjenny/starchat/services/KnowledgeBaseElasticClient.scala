package com.getjenny.starchat.services

/**
  * Created by Angelo Leto <angelo@getjenny.com> on 01/07/16.
  */

object KnowledgeBaseElasticClient extends QuestionAnswerElasticClient {
  override val indexSuffix: String = kbIndexSuffix
}

