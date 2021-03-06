<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="opcionRespuesta.show" default="Show OpcionRespuesta" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="opcionRespuesta.list" default="OpcionRespuesta List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="opcionRespuesta.new" default="New OpcionRespuesta" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="opcionRespuesta.show" default="Show OpcionRespuesta" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="opcionRespuesta.id" default="Id" />:</td>
                            
                            <td valign="top" class="value">${opcionRespuesta.id}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="opcionRespuesta.opcion" default="Opcion" />:</td>
                            
                            <td valign="top" class="value">${opcionRespuesta.opcion}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="opcionRespuesta.orden" default="Orden" />:</td>
                            
                            <td valign="top" class="value">${opcionRespuesta.orden}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="opcionRespuesta.pregunta" default="Pregunta" />:</td>
                            
                            <td valign="top" class="value"><g:link controller="pregunta" action="show" id="${opcionRespuesta?.pregunta?.id}">${opcionRespuesta?.pregunta}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${opcionRespuesta?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="${message(code:'edit', 'default':'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
