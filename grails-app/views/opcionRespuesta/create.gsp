<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="opcionRespuesta.create" default="Create OpcionRespuesta" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="opcionRespuesta.list" default="OpcionRespuesta List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="opcionRespuesta.create" default="Create OpcionRespuesta" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form action="save" name="opcionRespuestaForm" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="opcion"><g:message code="opcionRespuesta.opcion" default="Opcion" /> <span class="req">*</span> :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:opcionRespuesta,field:'opcion','errors')}">
									<textarea class="required" rows='5' cols='40' id="opcion" name="opcion"  value="${fieldValue(bean:opcionRespuesta,field:'opcion')}"></textarea>
									<g:hasErrors bean="${opcionRespuesta}" field="opcion">
						            <div class="errors">
						                <g:renderErrors bean="${opcionRespuesta}" as="list" field="opcion"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="orden"><g:message code="opcionRespuesta.orden" default="Orden" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:opcionRespuesta,field:'orden','errors')}">
                                    <input type="text" id="orden" name="orden" value="${fieldValue(bean:opcionRespuesta,field:'orden')}" />
									<g:hasErrors bean="${opcionRespuesta}" field="orden">
						            <div class="errors">
						                <g:renderErrors bean="${opcionRespuesta}" as="list" field="orden"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pregunta"><g:message code="opcionRespuesta.pregunta" default="Pregunta" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:opcionRespuesta,field:'pregunta','errors')}">
                                    <g:select optionKey="id" from="${Pregunta.list()}" name="pregunta.id" value="${opcionRespuesta?.pregunta?.id}" ></g:select>
									<g:hasErrors bean="${opcionRespuesta}" field="pregunta">
						            <div class="errors">
						                <g:renderErrors bean="${opcionRespuesta}" as="list" field="pregunta"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="${message(code:'create', 'default':'Create')}" /></span>
                </div>
            </g:form>
			<script type="text/javascript">
				var valid = new Validation('opcionRespuestaForm', {immediate : true});
			</script>
        </div>
    </body>
</html>
