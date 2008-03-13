

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="default" />
        <title><g:message code="respuestaEvaluacion.show" default="Show RespuestaEvaluacion" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="respuestaEvaluacion.list" default="RespuestaEvaluacion List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="respuestaEvaluacion.new" default="New RespuestaEvaluacion" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="respuestaEvaluacion.show" default="Show RespuestaEvaluacion" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="respuestaEvaluacion.id" default="Id" />:</td>
                            
                            <td valign="top" class="value">${respuestaEvaluacion.id}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="respuestaEvaluacion.opcionRespuesta" default="Opcion Respuesta" />:</td>
                            
                            <td valign="top" class="value"><g:link controller="opcionRespuesta" action="show" id="${respuestaEvaluacion?.opcionRespuesta?.id}">${respuestaEvaluacion?.opcionRespuesta}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="respuestaEvaluacion.respuestaAbierta" default="Respuesta Abierta" />:</td>
                            
                            <td valign="top" class="value">${respuestaEvaluacion.respuestaAbierta}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="respuestaEvaluacion.evaluacion" default="Evaluacion" />:</td>
                            
                            <td valign="top" class="value"><g:link controller="evaluacion" action="show" id="${respuestaEvaluacion?.evaluacion?.id}">${respuestaEvaluacion?.evaluacion}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="respuestaEvaluacion.pregunta" default="Pregunta" />:</td>
                            
                            <td valign="top" class="value"><g:link controller="pregunta" action="show" id="${respuestaEvaluacion?.pregunta?.id}">${respuestaEvaluacion?.pregunta}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${respuestaEvaluacion?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="${message(code:'edit', 'default':'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
