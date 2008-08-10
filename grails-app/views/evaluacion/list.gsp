<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="evaluacion.list" default="Evaluacion List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="evaluacion.new" default="New Evaluacion" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="evaluacion.list" default="Evaluacion List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" titleKey="evaluacion.id" />
                        
                   	        <th><g:message code="evaluacion.cuestionario" default="Cuestionario" /></th>
                   	    
                   	        <th><g:message code="evaluacion.evaluador" default="Evaluador" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${evaluacionList}" status="i" var="evaluacion">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${evaluacion.id}">${evaluacion.id?.encodeAsHTML()}</g:link></td>
                        
                            <td>${evaluacion.cuestionario?.encodeAsHTML()}</td>
                        
                            <td>${evaluacion.evaluador?.encodeAsHTML()}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Evaluacion.count()}" />
            </div>
        </div>
    </body>
</html>
