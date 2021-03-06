<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="pregunta.show" default="Show Pregunta" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="pregunta.list" default="Pregunta List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="pregunta.new" default="New Pregunta" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pregunta.show" default="Show Pregunta" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="pregunta.id" default="Id" />:</td>
                            
                            <td valign="top" class="value">${pregunta.id}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="pregunta.pregunta" default="Pregunta" />:</td>
                            
                            <td valign="top" class="value">${pregunta.pregunta}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="pregunta.abierta" default="Abierta" />:</td>
                            
                            <td valign="top" class="value">${pregunta.abierta}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="pregunta.orden" default="Orden" />:</td>
                            
                            <td valign="top" class="value">${pregunta.orden}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="pregunta.cuestionario" default="Cuestionario" />:</td>
                            
                            <td valign="top" class="value"><g:link controller="cuestionario" action="show" id="${pregunta?.cuestionario?.id}">${pregunta?.cuestionario}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="pregunta.opciones" default="Opciones" />:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="o" in="${pregunta.opciones}">
                                    <li><g:link controller="opcionRespuesta" action="show" id="${o.id}">${o}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${pregunta?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="${message(code:'edit', 'default':'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
