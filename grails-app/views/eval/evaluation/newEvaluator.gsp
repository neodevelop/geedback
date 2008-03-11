 
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
				<g:if test="${flash.message}">
	            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
	            </g:if>
				<div class="body">
					<g:form action="evaluation" method="post" >
				        <div class="dialog">
							<table>
				                <tbody>

				                    <tr class="prop">
				                        <td valign="top" class="name">
				                            <label for="nombre"><g:message code="evaluador.nombre" default="Nombre" /> <span class="req">*</span> :</label>
				                        </td>
				                        <td valign="top" class="value ${hasErrors(bean:evaluador,field:'nombre','errors')}">
				                            <input class="required" type="text"  maxlength="30" id="nombre" name="nombre"  value="${fieldValue(bean:evaluador,field:'nombre')}"/>
											<g:hasErrors bean="${evaluador}" field="nombre">
								            <div class="errors">
								                <g:renderErrors bean="${evaluador}" as="list" field="nombre"/>
								            </div>
								            </g:hasErrors>
				                        </td>
				                    </tr> 

				                    <tr class="prop">
				                        <td valign="top" class="name">
				                            <label for="apellidos"><g:message code="evaluador.apellidos" default="Apellidos" /> <span class="req">*</span> :</label>
				                        </td>
				                        <td valign="top" class="value ${hasErrors(bean:evaluador,field:'apellidos','errors')}">
				                            <input class="required" type="text"  maxlength="40" id="apellidos" name="apellidos"  value="${fieldValue(bean:evaluador,field:'apellidos')}"/>
											<g:hasErrors bean="${evaluador}" field="apellidos">
								            <div class="errors">
								                <g:renderErrors bean="${evaluador}" as="list" field="apellidos"/>
								            </div>
								            </g:hasErrors>
				                        </td>
				                    </tr> 

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

				                    <tr class="prop">
				                        <td valign="top" class="name">
				                            <label for="empresa"><g:message code="evaluador.empresa" default="Empresa" /> <span class="req">*</span> :</label>
				                        </td>
				                        <td valign="top" class="value ${hasErrors(bean:evaluador,field:'empresa','errors')}">
				                            <input class="required" type="text"  maxlength="50" id="empresa" name="empresa"  value="${fieldValue(bean:evaluador,field:'empresa')}"/>
											<g:hasErrors bean="${evaluador}" field="empresa">
								            <div class="errors">
								                <g:renderErrors bean="${evaluador}" as="list" field="empresa"/>
								            </div>
								            </g:hasErrors>
				                        </td>
				                    </tr> 

				                </tbody>
				            </table>
				        </div>
				        <div class="buttons">
							<span class="button"><g:submitButton name="back" value="${message(code:'default.paginate.prev')}"></g:submitButton></span>
							<span class="button"><g:submitButton name="next" value="${message(code:'default.paginate.next')}"></g:submitButton></span>
				        </div>
				    </g:form>

				</div>
			</div>
		</div>
    </body>
</html>