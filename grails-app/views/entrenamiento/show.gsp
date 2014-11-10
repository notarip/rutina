
<%@ page import="rutina.Entrenamiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entrenamiento.label', default: 'Entrenamiento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-entrenamiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-entrenamiento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list entrenamiento">
			
				<g:if test="${entrenamientoInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="entrenamiento.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${entrenamientoInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrenamientoInstance?.acciones}">
				<li class="fieldcontain">
					<span id="acciones-label" class="property-label"><g:message code="entrenamiento.acciones.label" default="Acciones" /></span>
					
						<g:each in="${entrenamientoInstance.acciones}" var="a">
						<span class="property-value" aria-labelledby="acciones-label"><g:link controller="accion" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${entrenamientoInstance?.generado}">
				<li class="fieldcontain">
					<span id="generado-label" class="property-label"><g:message code="entrenamiento.generado.label" default="Generado" /></span>
					
						<span class="property-value" aria-labelledby="generado-label"><g:formatDate date="${entrenamientoInstance?.generado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrenamientoInstance?.rutina}">
				<li class="fieldcontain">
					<span id="rutina-label" class="property-label"><g:message code="entrenamiento.rutina.label" default="Rutina" /></span>
					
						<span class="property-value" aria-labelledby="rutina-label"><g:link controller="rutina" action="show" id="${entrenamientoInstance?.rutina?.id}">${entrenamientoInstance?.rutina?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${entrenamientoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="entrenamiento.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${entrenamientoInstance?.usuario?.id}">${entrenamientoInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:entrenamientoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${entrenamientoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
