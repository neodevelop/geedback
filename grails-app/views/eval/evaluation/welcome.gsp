 
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>
		<div class="item">
			<div class="date">
			</div>
			<div class="content">
				<h1><span></a><g:message code="evaluation" default="Evaluaci&oacute;n" /></span></h1>
				<div class="body">

						<p>Recuerda escoger correctamente el Curso que tomaste.</p>
						<p>Tambien recuerda poner correctamente tu dirección de correo.</p>

					<g:form action="evaluation" method="post" >
				        <div class="dialog">
				        </div>
				        <div class="buttons">
							<span class="button"><g:submitButton name="next" value="${message(code:'default.paginate.next')}"></g:submitButton></span>
				        </div>
				    </g:form>
			</div>
			</div>
		</div>
    </body>
</html>
