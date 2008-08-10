<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="cuestionario.create" default="Create Cuestionario" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="cuestionario.list" default="Cuestionario List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="cuestionario.create" default="Create Cuestionario" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form action="save" name="cuestionarioForm" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombre"><g:message code="cuestionario.nombre" default="Nombre" /> <span class="req">*</span> :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:cuestionario,field:'nombre','errors')}">
                                    <input class="required" type="text"  maxlength="30" id="nombre" name="nombre"  value="${fieldValue(bean:cuestionario,field:'nombre')}"/>
									<g:hasErrors bean="${cuestionario}" field="nombre">
						            <div class="errors">
						                <g:renderErrors bean="${cuestionario}" as="list" field="nombre"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descripcion"><g:message code="cuestionario.descripcion" default="Descripcion" /> <span class="req">*</span> :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:cuestionario,field:'descripcion','errors')}">
                                    <input class="required" type="text"  maxlength="100" id="descripcion" name="descripcion"  value="${fieldValue(bean:cuestionario,field:'descripcion')}"/>
									<g:hasErrors bean="${cuestionario}" field="descripcion">
						            <div class="errors">
						                <g:renderErrors bean="${cuestionario}" as="list" field="descripcion"/>
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
				var valid = new Validation('cuestionarioForm', {immediate : true});
			</script>
        </div>
    </body>
</html>
