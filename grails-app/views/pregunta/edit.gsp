

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="default" />
        <title><g:message code="pregunta.edit" default="Edit Pregunta" /></title>

		<g:javascript library="prototype" />
		<g:javascript library="prototype/effects" />
		<g:javascript library="validation/validation" />
		
		<link rel="stylesheet" href="${createLinkTo(dir:'css/validation',file:'validation.css')}" />
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="pregunta.list" default="Pregunta List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="pregunta.new" default="New Pregunta" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pregunta.edit" default="Edit Pregunta" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form method="post" name="preguntaForm" >
                <input type="hidden" name="id" value="${pregunta?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pregunta"><g:message code="pregunta.pregunta" default="Pregunta" /> <span class="req">*</span> :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pregunta,field:'pregunta','errors')}">
                                    <input class="required" type="text"  maxlength="50" id="pregunta" name="pregunta"  value="${fieldValue(bean:pregunta,field:'pregunta')}"/>
									<g:hasErrors bean="${pregunta}" field="pregunta">
						            <div class="errors">
						                <g:renderErrors bean="${pregunta}" as="list" field="pregunta"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="abierta"><g:message code="pregunta.abierta" default="Abierta" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pregunta,field:'abierta','errors')}">
                                    <g:checkBox name="abierta" value="${pregunta?.abierta}" ></g:checkBox>
									<g:hasErrors bean="${pregunta}" field="abierta">
						            <div class="errors">
						                <g:renderErrors bean="${pregunta}" as="list" field="abierta"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="orden"><g:message code="pregunta.orden" default="Orden" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pregunta,field:'orden','errors')}">
                                    <input type="text" id="orden" name="orden" value="${fieldValue(bean:pregunta,field:'orden')}" />
									<g:hasErrors bean="${pregunta}" field="orden">
						            <div class="errors">
						                <g:renderErrors bean="${pregunta}" as="list" field="orden"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cuestionario"><g:message code="pregunta.cuestionario" default="Cuestionario" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pregunta,field:'cuestionario','errors')}">
                                    <g:select optionKey="id" from="${Cuestionario.list()}" name="cuestionario.id" value="${pregunta?.cuestionario?.id}" ></g:select>
									<g:hasErrors bean="${pregunta}" field="cuestionario">
						            <div class="errors">
						                <g:renderErrors bean="${pregunta}" as="list" field="cuestionario"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="opciones"><g:message code="pregunta.opciones" default="Opciones" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pregunta,field:'opciones','errors')}">
                                    
<ul>
<g:each var="o" in="${pregunta?.opciones?}">
    <li><g:link controller="opcionRespuesta" action="show" id="${o.id}">${o}</g:link></li>
</g:each>
</ul>
<g:link controller="opcionRespuesta" params="["pregunta.id":pregunta?.id]" action="create">Add OpcionRespuesta</g:link>

									<g:hasErrors bean="${pregunta}" field="opciones">
						            <div class="errors">
						                <g:renderErrors bean="${pregunta}" as="list" field="opciones"/>
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
				var valid = new Validation('preguntaForm', {immediate : true});
			</script>
        </div>
    </body>
</html>
