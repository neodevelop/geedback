

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="cuestionario.list" default="Cuestionario List" /></title>
    </head>
    <body>
		<div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="cuestionario.new" default="New Cuestionario" /></g:link></span>
        </div>
		<div class="item">
			<div class="date">
			</div>
			<div class="content">
					
		            <h1><g:message code="cuestionario.list" default="Cuestionario List" /></h1>
		            <g:if test="${flash.message}">
		            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
		            </g:if>
		            <div class="list">
		                <table>
		                    <thead>
		                        <tr>

		                   	        <g:sortableColumn property="id" title="Id" titleKey="cuestionario.id" />

		                   	        <g:sortableColumn property="nombre" title="Nombre" titleKey="cuestionario.nombre" />

		                   	        <g:sortableColumn property="descripcion" title="Descripcion" titleKey="cuestionario.descripcion" />

		                        </tr>
		                    </thead>
		                    <tbody>
		                    <g:each in="${cuestionarioList}" status="i" var="cuestionario">
		                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

		                            <td><g:link action="show" id="${cuestionario.id}">${cuestionario.id?.encodeAsHTML()}</g:link></td>

		                            <td>${cuestionario.nombre?.encodeAsHTML()}</td>

		                            <td>${cuestionario.descripcion?.encodeAsHTML()}</td>

		                        </tr>
		                    </g:each>
		                    </tbody>
		                </table>
		            </div>
		            <div class="paginateButtons">
		                <g:paginate total="${Cuestionario.count()}" />
		            </div>
		        </div>

		</div>
        
    </body>
</html>
