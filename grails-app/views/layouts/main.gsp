<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title><g:layoutTitle default="geedback - " /></title>
        <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'bitter_sweet.css')}" />
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
		<script src="http://www.google.com/jsapi"></script>
		<script>
		  // Load Prototype
		  google.load("prototype", "1.6.0.2");
		</script>
        <g:javascript library="application" />	
		<g:javascript library="validation/validation" />
		<link rel="stylesheet" href="${createLinkTo(dir:'css/validation',file:'validation.css')}" />			
    </head>
    <body>
		<div class="container">
			<div class="top">
				<a href="${createLinkTo(dir:'')}">SynergyJ-geedback</a>
			</div>

			<div class="header"></div>

			<div class="main">

				<g:layoutBody />

			</div>

			<div class="navigation">

				<h1>Cursos</h1>
				<ul>
					<li><a href="http://www.synergyj.com/web.html" target="_blank">Desarrollo Web</a></li>
					<li><a href="http://www.synergyj.com/hibernate.html" target="_blank">Hibernate</a></li>
					<li><a href="http://www.synergyj.com/spring.html" target="_blank">Spring</a></li>
				</ul>
				<h1>Conoce geedback</h1>
				<ul>
					<li><a href="http://code.google.com/p/geedback/" target="_blank"><span>geedback en Google Code</span></a></li>
					<li><script type="text/javascript" src="http://www.ohloh.net/projects/13341/widgets/project_partner_badge"></script></li>
				</ul>
			</div>

			<div class="clearer"><span></span></div>

			<div class="footer">&copy; 2006 <a href="http://www.synergyj.com" target="_blank">SynergyJ</a>. Valid <a href="http://jigsaw.w3.org/css-validator/check/referer" target="_blank">CSS</a> &amp; <a href="http://validator.w3.org/check?uri=referer" target="_blank">XHTML</a>. Template design by <a href="http://templates.arcsin.se" target="_blank">Arcsin</a>
			</div>

		</div>
		
    </body>	
</html>