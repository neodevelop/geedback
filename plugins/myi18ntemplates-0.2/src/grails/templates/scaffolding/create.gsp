<% import org.codehaus.groovy.grails.orm.hibernate.support.ClosureEventTriggeringInterceptor as Events %>
<%=packageName%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title><g:message code="${propertyName}.create" default="Create ${className}" /></title>

		<g:javascript library="prototype" />
		<g:javascript library="prototype/effects" />
		<g:javascript library="validation/validation" />
		
		<link rel="stylesheet" href="\${createLinkTo(dir:'css/validation',file:'validation.css')}" />
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="\${createLinkTo(dir:'')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="${propertyName}.list" default="${className} List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="${propertyName}.create" default="Create ${className}" /></h1>
            <g:if test="\${flash.message}">
            <div class="message"><g:message code="\${flash.message}" args="\${flash.args}" default="\${flash.defaultMessage}" /></div>
            </g:if>
            <g:form action="save" name="${propertyName}Form" method="post" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
                <div class="dialog">
                    <table>
                        <tbody>
                        <%  excludedProps = ['version',
                                             'id',
											 Events.ONLOAD_EVENT,
                                             Events.BEFORE_DELETE_EVENT,
                                             Events.BEFORE_INSERT_EVENT,
                                             Events.BEFORE_UPDATE_EVENT]
                            props = domainClass.properties.findAll { !excludedProps.contains(it.name) }
                            Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
                            props.each { p ->
                                if(p.type != Set.class) {
                                    cp = domainClass.constrainedProperties[p.name]
                                    display = (cp ? cp.display : true)        
                                    if(display) { %>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="${p.name}"><g:message code="${propertyName}.${p.name}" default="${p.naturalName}" /> <% if(!cp?.blank) { %><span class="req">*</span><% } %> :</label>
                                </td>
                                <td valign="top" class="value \${hasErrors(bean:${domainClass.propertyName},field:'${p.name}','errors')}">
                                    ${renderEditor(p)}
									<g:hasErrors bean="\${${propertyName}}" field="${p.name}">
						            <div class="errors">
						                <g:renderErrors bean="\${${propertyName}}" as="list" field="${p.name}"/>
						            </div>
						            </g:hasErrors>
                                </td>
                            </tr> 
                        <%  }   }   } %>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="\${message(code:'create', 'default':'Create')}" /></span>
                </div>
            </g:form>
			<script type="text/javascript">
				var valid = new Validation('${propertyName}Form', {immediate : true});
			</script>
        </div>
    </body>
</html>
