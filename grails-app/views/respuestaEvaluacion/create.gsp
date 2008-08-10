<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="respuestaEvaluacion.create" default="Create RespuestaEvaluacion" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="respuestaEvaluacion.list" default="RespuestaEvaluacion List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="respuestaEvaluacion.create" default="Create RespuestaEvaluacion" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form action="save" name="respuestaEvaluacionForm" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="opcionRespuesta"><g:message code="respuestaEvaluacion.opcionRespuesta" default="Opcion Respuesta" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:respuestaEvaluacion,field:'opcionRespuesta','errors')}">
                                    <g:select optionKey="id" from="${OpcionRespuesta.list()}" name="opcionRespuesta.id" value="${respuestaEvaluacion?.opcionRespuesta?.id}" noSelection="['null':'']"></g:select>
									<g:hasErrors bean="${respuestaEvaluacion}" field="opcionRespuesta">
						            <div class="errors">
						                <g:renderErrors bean="${respuestaEvaluacion}" as="list" field="opcionRespuesta"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="respuestaAbierta"><g:message code="respuestaEvaluacion.respuestaAbierta" default="Respuesta Abierta" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:respuestaEvaluacion,field:'respuestaAbierta','errors')}">
                                    <textarea rows="5" cols="40" name="respuestaAbierta">${respuestaEvaluacion?.respuestaAbierta?.encodeAsHTML()}</textarea>
									<g:hasErrors bean="${respuestaEvaluacion}" field="respuestaAbierta">
						            <div class="errors">
						                <g:renderErrors bean="${respuestaEvaluacion}" as="list" field="respuestaAbierta"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="evaluacion"><g:message code="respuestaEvaluacion.evaluacion" default="Evaluacion" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:respuestaEvaluacion,field:'evaluacion','errors')}">
                                    <g:select optionKey="id" from="${Evaluacion.list()}" name="evaluacion.id" value="${respuestaEvaluacion?.evaluacion?.id}" ></g:select>
									<g:hasErrors bean="${respuestaEvaluacion}" field="evaluacion">
						            <div class="errors">
						                <g:renderErrors bean="${respuestaEvaluacion}" as="list" field="evaluacion"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pregunta"><g:message code="respuestaEvaluacion.pregunta" default="Pregunta" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:respuestaEvaluacion,field:'pregunta','errors')}">
                                    <g:select optionKey="id" from="${Pregunta.list()}" name="pregunta.id" value="${respuestaEvaluacion?.pregunta?.id}" ></g:select>
									<g:hasErrors bean="${respuestaEvaluacion}" field="pregunta">
						            <div class="errors">
						                <g:renderErrors bean="${respuestaEvaluacion}" as="list" field="pregunta"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="${message(code:'create', 'default':'Create')}" /></span>
                </div>
            </g:form>
			<script type="text/javascript">
				var valid = new Validation('respuestaEvaluacionForm', {immediate : true});
			</script>
        </div>
    </body>
</html>
