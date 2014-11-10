
<%@ page import="rutina.Entrenamiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entrenamiento.label', default: 'Entrenamiento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-entrenamiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-entrenamiento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tipo" title="${message(code: 'entrenamiento.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="generado" title="${message(code: 'entrenamiento.generado.label', default: 'Generado')}" />
					
						<th><g:message code="entrenamiento.rutina.label" default="Rutina" /></th>
					
						<th><g:message code="entrenamiento.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${entrenamientoInstanceList}" status="i" var="entrenamientoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${entrenamientoInstance.id}">${fieldValue(bean: entrenamientoInstance, field: "tipo")}</g:link></td>
					
						<td><g:formatDate date="${entrenamientoInstance.generado}" /></td>
					
						<td>${fieldValue(bean: entrenamientoInstance, field: "rutina")}</td>
					
						<td>${fieldValue(bean: entrenamientoInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${entrenamientoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
