
<%@ page import="rutina.Sesion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sesion.label', default: 'Sesion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sesion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sesion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fecha" title="${message(code: 'sesion.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'sesion.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="generado" title="${message(code: 'sesion.generado.label', default: 'Generado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sesionInstanceList}" status="i" var="sesionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sesionInstance.id}">${fieldValue(bean: sesionInstance, field: "fecha")}</g:link></td>
					
						<td>${fieldValue(bean: sesionInstance, field: "descripcion")}</td>
					
						<td><g:formatDate date="${sesionInstance.generado}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sesionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
