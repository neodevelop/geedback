

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="default" />
        <title><g:message code="evaluacion.show" default="Show Evaluacion" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="evaluacion.list" default="Evaluacion List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="evaluacion.new" default="New Evaluacion" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="evaluacion.show" default="Show Evaluacion" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="evaluacion.id" default="Id" />:</td>
                            
                            <td valign="top" class="value">${evaluacion.id}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="evaluacion.cuestionario" default="Cuestionario" />:</td>
                            
                            <td valign="top" class="value"><g:link controller="cuestionario" action="show" id="${evaluacion?.cuestionario?.id}">${evaluacion?.cuestionario}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="evaluacion.evaluador" default="Evaluador" />:</td>
                            
                            <td valign="top" class="value"><g:link controller="evaluador" action="show" id="${evaluacion?.evaluador?.id}">${evaluacion?.evaluador}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="evaluacion.respuestas" default="Respuestas" />:</td>
                            
                            <td  valign="top" style="text-align:left;" class="value">
                                <ul>
                                <g:each var="r" in="${evaluacion.respuestas}">
                                    <li><g:link controller="respuestaEvaluacion" action="show" id="${r.id}">${r}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${evaluacion?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="Edit" value="${message(code:'edit', 'default':'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
