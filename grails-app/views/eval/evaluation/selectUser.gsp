 
<html>
    <head>
        <meta name="layout" content="main" />

		<g:javascript library="prototype" />
		<g:javascript library="prototype/effects" />
		<g:javascript library="validation/validation" />
		
		<link rel="stylesheet" href="${createLinkTo(dir:'css/validation',file:'validation.css')}" />
    </head>
    <body>
		<div class="item">
			<div class="date">
			</div>
			<div class="content">
				<h1><span></a><g:message code="evaluation" default="Evaluaci&oacute;n" /></span></h1>
				
				<div class="body">

						<g:form action="evaluation" method="post" name="formEmail" >
					        <div class="dialog">
								<table>
					                <tbody>

					                    <tr class="prop">
					                        <td valign="top" class="name">
					                            <label for="correo"><g:message code="evaluador.correo" default="Correo" /> <span class="req">*</span> :</label>
					                        </td>
					                        <td valign="top" class="value ${hasErrors(bean:evaluador,field:'correo','errors')}">
					                            <input class="required validate-email" type="text"  maxlength="100" id="correo" name="correo"  value="${fieldValue(bean:evaluador,field:'correo')}"/>
												<g:hasErrors bean="${evaluador}" field="correo">
									            <div class="errors">
									                <g:renderErrors bean="${evaluador}" as="list" field="correo"/>
									            </div>
									            </g:hasErrors>
					                        </td>
					                    </tr> 

					                </tbody>
					            </table>
					        </div>
					        <div class="buttons">
								<span class="button"><g:submitButton name="back" value="${message(code:'default.paginate.prev')}"></g:submitButton></span>
								<span class="button"><g:submitButton name="next" value="${message(code:'default.paginate.next')}"></g:submitButton></span>
					        </div>
					    </g:form>
						<script type="text/javascript">
							var valid = new Validation('formEmail', {immediate : true});
						</script>
			</div>
			</div>
		</div>




    </body>
</html>
