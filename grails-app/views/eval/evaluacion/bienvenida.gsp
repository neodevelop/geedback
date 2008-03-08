 
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>
		<div class="item">
			<div class="date">
			</div>
			<div class="content">
				<h1><span></a><g:message code="evaluacion" default="Evaluaci&oacute;n" /></span></h1>
				<div class="body">

						<p>Recuerda escoger correctamente el Curso que tomaste.</p>
						<p>Tambien recuerda poner correctamente tu dirección de correo.</p>

					<g:form action="evaluacion" method="post" >
				        <div class="dialog">
				        </div>
				        <div class="buttons">
							<span class="button"><g:submitButton name="siguiente" value="${message(code:'default.paginate.next')}"></g:submitButton></span>
				        </div>
				    </g:form>
			</div>
			</div>
		</div>
    </body>
</html>
