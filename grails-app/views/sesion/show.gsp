
<%@ page import="rutina.Sesion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sesion.label', default: 'Sesion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sesion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sesion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sesion">
			
				<g:if test="${sesionInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="sesion.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${sesionInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${sesionInstance?.acciones}">
				<li class="fieldcontain">
					<span id="acciones-label" class="property-label"><g:message code="sesion.acciones.label" default="Acciones" /></span>
					
						<g:each in="${sesionInstance.acciones}" var="a">
						<span class="property-value" aria-labelledby="acciones-label"><g:link controller="accion" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${sesionInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="sesion.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${sesionInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sesionInstance?.generado}">
				<li class="fieldcontain">
					<span id="generado-label" class="property-label"><g:message code="sesion.generado.label" default="Generado" /></span>
					
						<span class="property-value" aria-labelledby="generado-label"><g:formatDate date="${sesionInstance?.generado}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sesionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sesionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
