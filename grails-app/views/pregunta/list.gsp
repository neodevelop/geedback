<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="pregunta.list" default="Pregunta List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="pregunta.new" default="New Pregunta" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pregunta.list" default="Pregunta List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" titleKey="pregunta.id" />
                        
                   	        <g:sortableColumn property="pregunta" title="Pregunta" titleKey="pregunta.pregunta" />
                        
                   	        <g:sortableColumn property="abierta" title="Abierta" titleKey="pregunta.abierta" />
                        
                   	        <g:sortableColumn property="orden" title="Orden" titleKey="pregunta.orden" />
                        
                   	        <th><g:message code="pregunta.cuestionario" default="Cuestionario" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${preguntaList}" status="i" var="pregunta">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${pregunta.id}">${pregunta.id?.encodeAsHTML()}</g:link></td>
                        
                            <td>${pregunta.pregunta?.encodeAsHTML()}</td>
                        
                            <td>${pregunta.abierta?.encodeAsHTML()}</td>
                        
                            <td>${pregunta.orden?.encodeAsHTML()}</td>
                        
                            <td>${pregunta.cuestionario?.encodeAsHTML()}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Pregunta.count()}" />
            </div>
        </div>
    </body>
</html>
