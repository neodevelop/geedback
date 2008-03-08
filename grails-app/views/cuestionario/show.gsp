

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="cuestionario.show" default="Show Cuestionario" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="cuestionario.list" default="Cuestionario List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="cuestionario.new" default="New Cuestionario" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="cuestionario.show" default="Show Cuestionario" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cuestionario.id" default="Id" />:</td>
                            
                            <td valign="top" class="value">${cuestionario.id}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cuestionario.nombre" default="Nombre" />:</td>
                            
                            <td valign="top" class="value">${cuestionario.nombre}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cuestionario.descripcion" default="Descripcion" />:</td>
                            
                            <td valign="top" class="value">${cuestionario.descripcion}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="cuestionario.preguntas" default="Preguntas" />:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="p" in="${cuestionario.preguntas}">
                                    <li><g:link controller="pregunta" action="show" id="${p.id}">${p}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${cuestionario?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="${message(code:'edit', 'default':'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
