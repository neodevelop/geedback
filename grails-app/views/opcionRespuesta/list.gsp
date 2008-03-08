

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="opcionRespuesta.list" default="OpcionRespuesta List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="opcionRespuesta.new" default="New OpcionRespuesta" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="opcionRespuesta.list" default="OpcionRespuesta List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" titleKey="opcionRespuesta.id" />
                        
                   	        <g:sortableColumn property="opcion" title="Opcion" titleKey="opcionRespuesta.opcion" />
                        
                   	        <g:sortableColumn property="orden" title="Orden" titleKey="opcionRespuesta.orden" />
                        
                   	        <th><g:message code="opcionRespuesta.pregunta" default="Pregunta" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${opcionRespuestaList}" status="i" var="opcionRespuesta">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${opcionRespuesta.id}">${opcionRespuesta.id?.encodeAsHTML()}</g:link></td>
                        
                            <td>${opcionRespuesta.opcion?.encodeAsHTML()}</td>
                        
                            <td>${opcionRespuesta.orden?.encodeAsHTML()}</td>
                        
                            <td>${opcionRespuesta.pregunta?.encodeAsHTML()}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${OpcionRespuesta.count()}" />
            </div>
        </div>
    </body>
</html>
