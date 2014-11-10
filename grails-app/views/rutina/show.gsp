
<%@ page import="rutina.Rutina" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rutina.label', default: 'Rutina')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rutina" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rutina" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rutina">
			
				<g:if test="${rutinaInstance?.gimnasio}">
				<li class="fieldcontain">
					<span id="gimnasio-label" class="property-label"><g:message code="rutina.gimnasio.label" default="Gimnasio" /></span>
					
						<span class="property-value" aria-labelledby="gimnasio-label"><g:link controller="gimnasio" action="show" id="${rutinaInstance?.gimnasio?.id}">${rutinaInstance?.gimnasio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.inicio}">
				<li class="fieldcontain">
					<span id="inicio-label" class="property-label"><g:message code="rutina.inicio.label" default="Inicio" /></span>
					
						<span class="property-value" aria-labelledby="inicio-label"><g:formatDate date="${rutinaInstance?.inicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.fin}">
				<li class="fieldcontain">
					<span id="fin-label" class="property-label"><g:message code="rutina.fin.label" default="Fin" /></span>
					
						<span class="property-value" aria-labelledby="fin-label"><g:formatDate date="${rutinaInstance?.fin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.generado}">
				<li class="fieldcontain">
					<span id="generado-label" class="property-label"><g:message code="rutina.generado.label" default="Generado" /></span>
					
						<span class="property-value" aria-labelledby="generado-label"><g:formatDate date="${rutinaInstance?.generado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="rutina.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${rutinaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.sesiones}">
				<li class="fieldcontain">
					<span id="sesiones-label" class="property-label"><g:message code="rutina.sesiones.label" default="Sesiones" /></span>
					
						<g:each in="${rutinaInstance.sesiones}" var="s">
						<span class="property-value" aria-labelledby="sesiones-label"><g:link controller="sesion" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="rutina.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${rutinaInstance?.usuario?.id}">${rutinaInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rutinaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rutinaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
