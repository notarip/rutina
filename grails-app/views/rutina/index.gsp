
<%@ page import="rutina.Rutina" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'rutina.label', default: 'Rutina')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<meta name="layout" content="header">
	</head>
	<body>
		<div class="nav" role="navigation">
				<g:link class="create" action="create">
					<button type="button" class="btn btn-lg btn-info"><g:message code="default.button.create.label"/></button>
				</g:link>
		</div>
		<div id="list-rutina" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<div class="col-md-8">
          	<table class="table table-striped">
            <thead>
  					<tr>
						<th><g:message code="rutina.gimnasio.label" default="Gimnasio" /></th>
						<g:sortableColumn property="inicio" title="${message(code: 'rutina.inicio.label', default: 'Inicio')}" />
						<g:sortableColumn property="fin" title="${message(code: 'rutina.fin.label', default: 'Fin')}" />
						<g:sortableColumn property="generado" title="${message(code: 'rutina.generado.label', default: 'Generado')}" />
						<g:sortableColumn property="nombre" title="${message(code: 'rutina.nombre.label', default: 'Nombre')}" />
						<th><g:message code="rutina.usuario.label" default="Usuario" /></th>
					</tr>
            </thead>
            <tbody>
				<g:each in="${rutinaInstanceList}" status="i" var="rutinaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rutinaInstance.id}">${fieldValue(bean: rutinaInstance, field: "gimnasio")}</g:link></td>
					
						<td><g:formatDate date="${rutinaInstance.inicio}" /></td>
					
						<td><g:formatDate date="${rutinaInstance.fin}" /></td>
					
						<td><g:formatDate date="${rutinaInstance.generado}" /></td>
					
						<td>${fieldValue(bean: rutinaInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: rutinaInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

 			<div class="pagination">
				<g:paginate total="${rutinaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
