<style type='text/css' media='screen'>
#ajaxLogin {
   margin: 15px 0px; padding: 0px;
   text-align: center;
   display: none;
   position: absolute;
}
#ajaxLogin .inner {
   width: 260px;
   margin:0px auto;
   text-align:left;
   padding:10px;
   border-top:1px dashed #499ede;
   border-bottom:1px dashed #499ede;
   background-color:#EEF;
}
#ajaxLogin .inner .fheader {
   padding:4px;margin:3px 0px 3px 0;color:#2e3741;font-size:14px;font-weight:bold;
}
#ajaxLogin .inner .cssform p{
   clear: left;
   margin: 0;
   padding: 5px 0 8px 0;
   padding-left: 105px;
   border-top: 1px dashed gray;
   margin-bottom: 10px;
   height: 1%;
}
#ajaxLogin .inner .cssform input[type='text']{
   width: 120px;
}
#ajaxLogin .inner .cssform label{
   font-weight: bold;
   float: left;
   margin-left: -105px;
   width: 100px;
}
#ajaxLogin .inner .login_message {color:red;}
#ajaxLogin .inner .text_ {width:120px;}
#ajaxLogin .inner .chk {height:12px;}
.errorMessage { color: red; }
</style>
<div id='ajaxLogin'>
   <div class='inner'>
   <div class='fheader'>Please Login..</div>
   <form action='${request.contextPath}/j_acegi_security_check' method='POST'
       id='ajaxLoginForm' name='ajaxLoginForm' class='cssform'>
      <p>
         <label for='j_username'>Login ID</label>
         <input type='text' class='text_' name='j_username' value='' />
      </p>
      <p>
         <label for='j_password'>Password</label>
         <input type='password' class='text_' name='j_password' value='' />
      </p>
      <p>
         <label for='j_password'>Remember me</label>
         <input type='checkbox' class='chk' name='_acegi_security_remember_me'>
      </p>
      <p>
         <a href='javascript:void(0)' onclick='authAjax(); return false;'>Login</a>
      </p>
   </form>
   </div>
    <div style='display: none; text-align: left;' id='loginMessage'></div>
</div>

<script type='text/javascript'>

// center the form
$('ajaxLogin').style.left = ((document.viewport.getWidth() - 300) / 2) + 'px';
$('ajaxLogin').style.top = ((document.viewport.getHeight() - 300) / 2) + 'px';

function showLogin() {
   $('ajaxLogin').style.display = 'block';
}

function onSuccessfulLogin() {
   Element.hide('ajaxLogin');
   Element.hide('loginLink');
}

function authAjax() {
   Element.update('loginMessage', 'Sending request ...');
   Element.show('loginMessage');

   var form = document.ajaxLoginForm;
   var params = Form.serialize(form) + '&acegi-security-redirect=/login/ajaxSuccess';
   Form.disable(form);
   new Ajax.Request(form.action, {
      method: 'POST',
      postBody: params,
      onSuccess: function(response) {
         var responseText = response.responseText || '[]';
         var json = responseText.evalJSON();
         if (json.success) {
            onSuccessfulLogin();
         }
         else if (json.error) {
            Element.update('loginMessage', "<span class='errorMessage'>" + json.error + '</error>');
            Form.enable(document.ajaxLoginForm);
         }
         else {
            Element.update('loginMessage', responseText);
            Form.enable(document.ajaxLoginForm);
         }
      }
   });
}
</script>