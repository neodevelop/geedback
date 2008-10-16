<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<title>geedback - [<g:layoutTitle default="Sin titulo" />]</title>
        <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'bitter_sweet.css')}" />
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
		<script src="http://www.google.com/jsapi"></script>
		<script>
		  // Load Prototype
		  google.load("prototype", "1.6.0.2");
		  google.load("scriptaculous", "1.8.1");
		</script>
        <g:javascript library="application" />	
		<g:javascript library="validation/validation" />
		<link rel="stylesheet" href="${createLinkTo(dir:'css/validation',file:'validation.css')}" />			
		
		<modalbox:modalIncludes />
    </head>
    <body>
		<div class="container">
			<div class="top">
				<a href="${createLinkTo(dir:'')}"><g:meta name="app.name"/><sup><g:meta name="app.version"/></sup></a>
			</div>

			<div class="header"></div>

			<div class="main">

				<g:layoutBody />

			</div>

			<div class="navigation">
				<h1>
					<g:message code="welcome" default="Welcome" />
					<g:loggedInUserInfo field="userRealName"><g:message code="guest" default="Guest" /></g:loggedInUserInfo>
					<g:isLoggedIn><avatar:gravatar email="${loggedInUserInfo(field:'email')}" size="50"/></g:isLoggedIn>
				</h1>
				<ul>
					<g:isNotLoggedIn>
						<li><a href="<g:createLink controller="register" />"><g:message code="signin" default="Sign in" /></a></li>
						<li><modalbox:createLink controller="login" action="loginAjaxiano" title="${message(code:'login',default:'login')}" width="500"><g:message code="login" default="Login" /></modalbox:createLink></li>
					</g:isNotLoggedIn>
					
					<g:isLoggedIn>
						<li><a href="<g:createLink controller="logout" />"><g:message code="logout" default="logout" /></a></li>
					</g:isLoggedIn>
				</ul>
				<h1><g:message code="cources" default="Courses" /></h1>
				<ul>
					<li><a href="http://www.synergyj.com/web.html" target="_blank">Desarrollo Web</a></li>
					<li><a href="http://www.synergyj.com/hibernate.html" target="_blank">Hibernate</a></li>
					<li><a href="http://www.synergyj.com/spring.html" target="_blank">Spring</a></li>
					
					<avatar:gravatar email="domingo.suarez@gmail.com" size="50"/>
				</ul>
				<h1>Conoce geedback</h1>
				<ul>
					<li><a href="http://code.google.com/p/geedback/" target="_blank"><span><g:meta name="app.name"/> en Google Code</span></a></li>
					<li><script type="text/javascript" src="http://www.ohloh.net/projects/13341/widgets/project_partner_badge"></script></li>
				</ul>
				<h1>Acerca de Nosotros</h1>
				<div class="content">
					<img src="${createLinkTo(dir:'images',file:'banner.jpg')}" class="picB" alt="" />
					<p>Somos los fundadores del portal <strong><a target="_blank" href="http://www.springhispano.org">SpringHispano.org</a></strong>, nos gusta lo que hacemos: desarrollamos software y compartimos nuestras experiencias en este portal...
					</p>
				</div>
				
				<div style="padding-left: 80px;">
	      			<a href="http://www.grails.org/" target="_blank">
	      				<img src="${createLinkTo(dir:'images',file:'grails_button.gif')}" alt="Powered By Grails" border="0"/>
	      			</a>
	      		</div>
			</div>

			<div class="clearer"><span></span></div>

			<div class="footer">&copy; <g:meta name="app.name"/>. <g:meta name="app.version"/> on Grails <g:meta name="app.grails.version"/> By SynergyJ.com Template design by <a href="http://templates.arcsin.se" target="_blank">Arcsin</a>
			</div>

		</div>
		
    </body>	
</html>