<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="evaluador.show" default="Show Evaluador" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="evaluador.list" default="Evaluador List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="evaluador.new" default="New Evaluador" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="evaluador.show" default="Show Evaluador" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="evaluador.id" default="Id" />:</td>
                            
                            <td valign="top" class="value">${evaluador.id}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="evaluador.nombre" default="Nombre" />:</td>
                            
                            <td valign="top" class="value">${evaluador.nombre}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="evaluador.apellidos" default="Apellidos" />:</td>
                            
                            <td valign="top" class="value">${evaluador.apellidos}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="evaluador.correo" default="Correo" />:</td>
                            
                            <td valign="top" class="value">${evaluador.correo}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="evaluador.empresa" default="Empresa" />:</td>
                            
                            <td valign="top" class="value">${evaluador.empresa}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${evaluador?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="${message(code:'edit', 'default':'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
