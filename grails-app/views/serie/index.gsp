
<%@ page import="rutina.Serie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serie.label', default: 'Serie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-serie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-serie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="peso" title="${message(code: 'serie.peso.label', default: 'Peso')}" />
					
						<g:sortableColumn property="repeticiones" title="${message(code: 'serie.repeticiones.label', default: 'Repeticiones')}" />
					
						<g:sortableColumn property="series" title="${message(code: 'serie.series.label', default: 'Series')}" />
					
						<g:sortableColumn property="descanso" title="${message(code: 'serie.descanso.label', default: 'Descanso')}" />
					
						<g:sortableColumn property="distancia" title="${message(code: 'serie.distancia.label', default: 'Distancia')}" />
					
						<g:sortableColumn property="generado" title="${message(code: 'serie.generado.label', default: 'Generado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${serieInstanceList}" status="i" var="serieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serieInstance.id}">${fieldValue(bean: serieInstance, field: "peso")}</g:link></td>
					
						<td>${fieldValue(bean: serieInstance, field: "repeticiones")}</td>
					
						<td>${fieldValue(bean: serieInstance, field: "series")}</td>
					
						<td>${fieldValue(bean: serieInstance, field: "descanso")}</td>
					
						<td>${fieldValue(bean: serieInstance, field: "distancia")}</td>
					
						<td><g:formatDate date="${serieInstance.generado}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serieInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
