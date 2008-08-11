/*
 * Copyright 2002-2008 Domingo Suarez Torres-SynergyJ.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
acegi {
  loadAcegi=true

  algorithm="MD5" 
  //use Base64 text ( true or false )
  encodeHashAsBase64=false
  errorPage="null"

  /** login user domain class name and fields */
  loginUserDomainClass="Person"
  userName="username"
  password="passwd"
  enabled="enabled"
  relationalAuthorities = "authorities"
  /* you can specify method for to retrieve the roles. (you need to set relationalAuthorities=null)
  */
  //getAuthoritiesMethod=null //"getMoreAuthorities"

  /**
   * Authority domain class authority field name 
   * authorityFieldInList
   */
  authorityDomainClass="Authority"
  authorityField="authority"

  /** use RequestMap from DomainClass */
  useRequestMapDomainClass = true
  /** Requestmap domain class (if useRequestMapDomainClass = true) */
  requestMapClass="Requestmap"
  requestMapPathField="url"
  requestMapConfigAttributeField="configAttribute"

	

 /** 
  * if useRequestMapDomainClass is false, set request map pattern in string
  * see example below
  */
 /*  requestMapString = """
  CONVERT_URL_TO_LOWERCASE_BEFORE_COMPARISON
  PATTERN_TYPE_APACHE_ANT

  /login/**=IS_AUTHENTICATED_ANONYMOUSLY
  /admin/**=ROLE_USER
  /book/test/**=IS_AUTHENTICATED_FULLY
  /book/**=ROLE_SUPERVISOR
  /**=IS_AUTHENTICATED_ANONYMOUSLY
  """*/

 /**
  * To use email notification for user registration, set the following userMail to
  * true and config your mail settings.Note you also need to implement the script
  * grails generate-registration.
  */
  useMail = false
  mailHost = "localhost"
  mailUsername = "user@localhost"
  mailPassword = "sungod"
  mailProtocol = "smtp"
  mailFrom = "user@localhost"
  
  /** AJAX request header */
  ajaxHeader="X-Requested-With"
  
  /** default user's role for user registration */
  defaultRole="ROLE_USER"
  
  /** use basicProcessingFilter */
  basicProcessingFilter=false
  /** use switchUserProcessingFilter */
  switchUserProcessingFilter=false
}