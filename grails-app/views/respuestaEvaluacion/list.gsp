

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="default" />
        <title><g:message code="respuestaEvaluacion.list" default="RespuestaEvaluacion List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="respuestaEvaluacion.new" default="New RespuestaEvaluacion" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="respuestaEvaluacion.list" default="RespuestaEvaluacion List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" titleKey="respuestaEvaluacion.id" />
                        
                   	        <th><g:message code="respuestaEvaluacion.opcionRespuesta" default="Opcion Respuesta" /></th>
                   	    
                   	        <g:sortableColumn property="respuestaAbierta" title="Respuesta Abierta" titleKey="respuestaEvaluacion.respuestaAbierta" />
                        
                   	        <th><g:message code="respuestaEvaluacion.evaluacion" default="Evaluacion" /></th>
                   	    
                   	        <th><g:message code="respuestaEvaluacion.pregunta" default="Pregunta" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${respuestaEvaluacionList}" status="i" var="respuestaEvaluacion">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${respuestaEvaluacion.id}">${respuestaEvaluacion.id?.encodeAsHTML()}</g:link></td>
                        
                            <td>${respuestaEvaluacion.opcionRespuesta?.encodeAsHTML()}</td>
                        
                            <td>${respuestaEvaluacion.respuestaAbierta?.encodeAsHTML()}</td>
                        
                            <td>${respuestaEvaluacion.evaluacion?.encodeAsHTML()}</td>
                        
                            <td>${respuestaEvaluacion.pregunta?.encodeAsHTML()}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${RespuestaEvaluacion.count()}" />
            </div>
        </div>
    </body>
</html>
