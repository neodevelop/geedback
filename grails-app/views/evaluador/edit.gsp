

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="evaluador.edit" default="Edit Evaluador" /></title>

		<g:javascript library="prototype" />
		<g:javascript library="prototype/effects" />
		<g:javascript library="validation/validation" />
		
		<link rel="stylesheet" href="${createLinkTo(dir:'css/validation',file:'validation.css')}" />
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="evaluador.list" default="Evaluador List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="evaluador.new" default="New Evaluador" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="evaluador.edit" default="Edit Evaluador" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form method="post" name="evaluadorForm" >
                <input type="hidden" name="id" value="${evaluador?.id}" />
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
                    <span class="button"><g:actionSubmit class="save" action="Update" value="${message(code:'update', 'default':'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                </div>
            </g:form>
			<script type="text/javascript">
				var valid = new Validation('evaluadorForm', {immediate : true});
			</script>
        </div>
    </body>
</html>
