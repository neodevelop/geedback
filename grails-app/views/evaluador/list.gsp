

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="evaluador.list" default="Evaluador List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="evaluador.new" default="New Evaluador" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="evaluador.list" default="Evaluador List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" titleKey="evaluador.id" />
                        
                   	        <g:sortableColumn property="nombre" title="Nombre" titleKey="evaluador.nombre" />
                        
                   	        <g:sortableColumn property="apellidos" title="Apellidos" titleKey="evaluador.apellidos" />
                        
                   	        <g:sortableColumn property="correo" title="Correo" titleKey="evaluador.correo" />
                        
                   	        <g:sortableColumn property="empresa" title="Empresa" titleKey="evaluador.empresa" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${evaluadorList}" status="i" var="evaluador">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${evaluador.id}">${evaluador.id?.encodeAsHTML()}</g:link></td>
                        
                            <td>${evaluador.nombre?.encodeAsHTML()}</td>
                        
                            <td>${evaluador.apellidos?.encodeAsHTML()}</td>
                        
                            <td>${evaluador.correo?.encodeAsHTML()}</td>
                        
                            <td>${evaluador.empresa?.encodeAsHTML()}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Evaluador.count()}" />
            </div>
        </div>
    </body>
</html>
