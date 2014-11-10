
<%@ page import="rutina.Accion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accion.label', default: 'Accion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-accion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-accion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="accion.ejercicio.label" default="Ejercicio" /></th>
					
						<th><g:message code="accion.entrenamiento.label" default="Entrenamiento" /></th>
					
						<th><g:message code="accion.sesion.label" default="Sesion" /></th>
					
						<g:sortableColumn property="generado" title="${message(code: 'accion.generado.label', default: 'Generado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accionInstanceList}" status="i" var="accionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accionInstance.id}">${fieldValue(bean: accionInstance, field: "ejercicio")}</g:link></td>
					
						<td>${fieldValue(bean: accionInstance, field: "entrenamiento")}</td>
					
						<td>${fieldValue(bean: accionInstance, field: "sesion")}</td>
					
						<td><g:formatDate date="${accionInstance.generado}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
