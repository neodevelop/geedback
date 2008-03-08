

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="cuestionario.edit" default="Edit Cuestionario" /></title>

		<g:javascript library="prototype" />
		<g:javascript library="prototype/effects" />
		<g:javascript library="validation/validation" />
		
		<link rel="stylesheet" href="${createLinkTo(dir:'css/validation',file:'validation.css')}" />
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="cuestionario.list" default="Cuestionario List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="cuestionario.new" default="New Cuestionario" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="cuestionario.edit" default="Edit Cuestionario" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form method="post" name="cuestionarioForm" >
                <input type="hidden" name="id" value="${cuestionario?.id}" />
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
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="preguntas"><g:message code="cuestionario.preguntas" default="Preguntas" />  :</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:cuestionario,field:'preguntas','errors')}">
                                    
<ul>
<g:each var="p" in="${cuestionario?.preguntas?}">
    <li><g:link controller="pregunta" action="show" id="${p.id}">${p}</g:link></li>
</g:each>
</ul>
<g:link controller="pregunta" params="["cuestionario.id":cuestionario?.id]" action="create">Add Pregunta</g:link>

									<g:hasErrors bean="${cuestionario}" field="preguntas">
						            <div class="errors">
						                <g:renderErrors bean="${cuestionario}" as="list" field="preguntas"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="Update" value="${message(code:'update', 'default':'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${message(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${message(code:'delete', 'default':'Delete')}" /></span>
                </div>
            </g:form>
			<script type="text/javascript">
				var valid = new Validation('cuestionarioForm', {immediate : true});
			</script>
        </div>
    </body>
</html>
