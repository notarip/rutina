
<%@ page import="rutina.Serie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serie.label', default: 'Serie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-serie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-serie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list serie">
			
				<g:if test="${serieInstance?.peso}">
				<li class="fieldcontain">
					<span id="peso-label" class="property-label"><g:message code="serie.peso.label" default="Peso" /></span>
					
						<span class="property-value" aria-labelledby="peso-label"><g:fieldValue bean="${serieInstance}" field="peso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.repeticiones}">
				<li class="fieldcontain">
					<span id="repeticiones-label" class="property-label"><g:message code="serie.repeticiones.label" default="Repeticiones" /></span>
					
						<span class="property-value" aria-labelledby="repeticiones-label"><g:fieldValue bean="${serieInstance}" field="repeticiones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.series}">
				<li class="fieldcontain">
					<span id="series-label" class="property-label"><g:message code="serie.series.label" default="Series" /></span>
					
						<span class="property-value" aria-labelledby="series-label"><g:fieldValue bean="${serieInstance}" field="series"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.descanso}">
				<li class="fieldcontain">
					<span id="descanso-label" class="property-label"><g:message code="serie.descanso.label" default="Descanso" /></span>
					
						<span class="property-value" aria-labelledby="descanso-label"><g:fieldValue bean="${serieInstance}" field="descanso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.distancia}">
				<li class="fieldcontain">
					<span id="distancia-label" class="property-label"><g:message code="serie.distancia.label" default="Distancia" /></span>
					
						<span class="property-value" aria-labelledby="distancia-label"><g:fieldValue bean="${serieInstance}" field="distancia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.generado}">
				<li class="fieldcontain">
					<span id="generado-label" class="property-label"><g:message code="serie.generado.label" default="Generado" /></span>
					
						<span class="property-value" aria-labelledby="generado-label"><g:formatDate date="${serieInstance?.generado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.tiempo}">
				<li class="fieldcontain">
					<span id="tiempo-label" class="property-label"><g:message code="serie.tiempo.label" default="Tiempo" /></span>
					
						<span class="property-value" aria-labelledby="tiempo-label"><g:fieldValue bean="${serieInstance}" field="tiempo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.velocidad}">
				<li class="fieldcontain">
					<span id="velocidad-label" class="property-label"><g:message code="serie.velocidad.label" default="Velocidad" /></span>
					
						<span class="property-value" aria-labelledby="velocidad-label"><g:fieldValue bean="${serieInstance}" field="velocidad"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:serieInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${serieInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
