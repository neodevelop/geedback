

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="default" />
        <title><g:message code="evaluacion.edit" default="Edit Evaluacion" /></title>

		<g:javascript library="prototype" />
		<g:javascript library="prototype/effects" />
		<g:javascript library="validation/validation" />
		
		<link rel="stylesheet" href="${createLinkTo(dir:'css/validation',file:'validation.css')}" />
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="evaluacion.list" default="Evaluacion List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="evaluacion.new" default="New Evaluacion" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="evaluacion.edit" default="Edit Evaluacion" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form method="post" name="evaluacionForm" >
                <input type="hidden" name="id" value="${evaluacion?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cuestionario"><g:message code="evaluacion.cuestionario" default="Cuestionario" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:evaluacion,field:'cuestionario','errors')}">
                                    <g:select optionKey="id" from="${Cuestionario.list()}" name="cuestionario.id" value="${evaluacion?.cuestionario?.id}" ></g:select>
									<g:hasErrors bean="${evaluacion}" field="cuestionario">
						            <div class="errors">
						                <g:renderErrors bean="${evaluacion}" as="list" field="cuestionario"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="evaluador"><g:message code="evaluacion.evaluador" default="Evaluador" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:evaluacion,field:'evaluador','errors')}">
                                    <g:select optionKey="id" from="${Evaluador.list()}" name="evaluador.id" value="${evaluacion?.evaluador?.id}" ></g:select>
									<g:hasErrors bean="${evaluacion}" field="evaluador">
						            <div class="errors">
						                <g:renderErrors bean="${evaluacion}" as="list" field="evaluador"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="respuestas"><g:message code="evaluacion.respuestas" default="Respuestas" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:evaluacion,field:'respuestas','errors')}">
                                    
<ul>
<g:each var="r" in="${evaluacion?.respuestas?}">
    <li><g:link controller="respuestaEvaluacion" action="show" id="${r.id}">${r}</g:link></li>
</g:each>
</ul>
<g:link controller="respuestaEvaluacion" params="["evaluacion.id":evaluacion?.id]" action="create">Add RespuestaEvaluacion</g:link>

									<g:hasErrors bean="${evaluacion}" field="respuestas">
						            <div class="errors">
						                <g:renderErrors bean="${evaluacion}" as="list" field="respuestas"/>
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
				var valid = new Validation('evaluacionForm', {immediate : true});
			</script>
        </div>
    </body>
</html>
