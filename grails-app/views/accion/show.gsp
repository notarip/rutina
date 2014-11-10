
<%@ page import="rutina.Accion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'accion.label', default: 'Accion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-accion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-accion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list accion">
			
				<g:if test="${accionInstance?.ejercicio}">
				<li class="fieldcontain">
					<span id="ejercicio-label" class="property-label"><g:message code="accion.ejercicio.label" default="Ejercicio" /></span>
					
						<span class="property-value" aria-labelledby="ejercicio-label"><g:link controller="ejercicio" action="show" id="${accionInstance?.ejercicio?.id}">${accionInstance?.ejercicio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accionInstance?.entrenamiento}">
				<li class="fieldcontain">
					<span id="entrenamiento-label" class="property-label"><g:message code="accion.entrenamiento.label" default="Entrenamiento" /></span>
					
						<span class="property-value" aria-labelledby="entrenamiento-label"><g:link controller="entrenamiento" action="show" id="${accionInstance?.entrenamiento?.id}">${accionInstance?.entrenamiento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accionInstance?.sesion}">
				<li class="fieldcontain">
					<span id="sesion-label" class="property-label"><g:message code="accion.sesion.label" default="Sesion" /></span>
					
						<span class="property-value" aria-labelledby="sesion-label"><g:link controller="sesion" action="show" id="${accionInstance?.sesion?.id}">${accionInstance?.sesion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${accionInstance?.generado}">
				<li class="fieldcontain">
					<span id="generado-label" class="property-label"><g:message code="accion.generado.label" default="Generado" /></span>
					
						<span class="property-value" aria-labelledby="generado-label"><g:formatDate date="${accionInstance?.generado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${accionInstance?.series}">
				<li class="fieldcontain">
					<span id="series-label" class="property-label"><g:message code="accion.series.label" default="Series" /></span>
					
						<g:each in="${accionInstance.series}" var="s">
						<span class="property-value" aria-labelledby="series-label"><g:link controller="serie" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:accionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${accionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
