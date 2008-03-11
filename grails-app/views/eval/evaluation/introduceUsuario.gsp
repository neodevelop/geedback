 
<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="registro.nuevo.bienvenida.titulo" default="Welcome" /></title>
    </head>
    <body>
		<div class="item">
			<div class="date">
			</div>
			<div class="content">
				<h1><span></a><g:message code="evaluacion" default="Evaluaci&oacute;n" /></span></h1>
				<div class="body">

						<g:form action="evaluacion" method="post" >
					        <div class="dialog">
								<table>
					                <tbody>

					                    <tr class="prop">
					                        <td valign="top" class="name">
					                            <label for="correo"><g:message code="evaluador.correo" default="Correo" /> <span class="req">*</span> :</label>
					                        </td>
					                        <td valign="top" class="value ${hasErrors(bean:evaluador,field:'correo','errors')}">
					                            <input class="required" type="text"  maxlength="100" id="correo" name="correo"  value="${fieldValue(bean:evaluador,field:'correo')}"/>
												<g:hasErrors bean="${evaluador}" field="correo">
									            <div class="errors">
									                <g:renderErrors bean="${evaluador}" as="list" field="correo"/>
									            </div>
									            </g:hasErrors>
					                        </td>
					                    </tr> 

					                </tbody>
					            </table>
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
