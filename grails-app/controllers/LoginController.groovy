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
/**
 * Login Controller (Example)
 * @author generated by plugin script
 */
class LoginController {

  AuthenticateService authenticateService

  def index = {
    if(isLogon()){
      //if already logon
      redirect(uri:"/")
    }else{
      redirect(action:auth,params:params)
    }
  }

  /**
   * Login Page
   */
  def auth = {
    cache(response)
    if(isLogon()){
      //if already logon
      redirect(uri:"/")
    }
  }

  //Login page (function|json) for ajax access 
  def authAjax = {
    cache(response)
    //this is example:
    render """
    <script type='text/javascript' language='JavaScript'>
    (function(){
      //call function
      loginForm();
    })();
    </script>
    """
  }

  /**
   * Deny
   */
  def denied ={
    redirect(uri:"/")
  }

  //deny page (data|view|json) for ajax access
  def deniedAjax = {
    //this is example:
    render "{error:'access denied'}"
  }

  /**
   * login failed
   */
  def authfail = {
    def username = session["ACEGI_SECURITY_LAST_USERNAME"]
    def msg=""
    if(session["ACEGI_SECURITY_LAST_EXCEPTION"]){
      def information = session["ACEGI_SECURITY_LAST_EXCEPTION"]
      if(information instanceof org.acegisecurity.DisabledException){
        msg="[$username] is disabled."
      }else{
        msg="[$username] wrong username/password."
      }
    }

    //is ajax access?
    def cnf = authenticateService.getAcegiConfig()
    def ajaxHeader = cnf.acegi.ajaxHeader
    def AJAX_HEADER="${ajaxHeader}"
    boolean isAjax=false;
    if(session["ACEGI_SAVED_REQUEST_KEY"]){
      def itr =  session["ACEGI_SAVED_REQUEST_KEY"].getHeaderValues(AJAX_HEADER)
      if(itr.hasNext()) isAjax=true
    }

	println "Error al hacer login"
	println msg
	
    if(isAjax){
		println "AJAX"
      render("{error:'${msg}'}")
    }else{
	println "NORMAL"
      flash.message = msg
	
      redirect(action:auth,params:params)
    }
  }

  /** 
   * is logon or not
   */
  def isLogon(){
    def authPrincipal = authenticateService.principal()
    return (authPrincipal!=null && authPrincipal!="anonymousUser")
  }

  /** cache controls */
  def cache(response){
    response.setHeader("Cache-Control","no-cache"); // HTTP 1.1
    response.addDateHeader("Expires", 0);
    response.setDateHeader("max-age", 0); 
    response.setIntHeader ("Expires", -1); //prevents caching at the proxy server 
    response.addHeader("cache-Control", "private"); //IE5.x only;
  }
	def loginAjaxiano = {
		cache(response)
	}

}
