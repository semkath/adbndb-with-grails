<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<g:set var="entityName"
	value="${message(code: 'search.label', default: 'Search')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<g:form action="index">
	<div class="dialog">
	<table>
			<tr class="prop">
				<td valign="top" class="name"><label for="Name">Search</label></td>
				<td valign="top" class="value"><g:textField name="query" /></td>
			</tr>
	</table>
	</div>
	<div class="buttons"><span class="button"><g:actionSubmit
		class="" value="find" action="result" /></span></div>
</g:form>
</body>
</html>