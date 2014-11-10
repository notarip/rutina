
<%@ page import="rutina.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="usuario.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${usuarioInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuario.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuario.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="usuario.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${usuarioInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.tiempoDisponible}">
				<li class="fieldcontain">
					<span id="tiempoDisponible-label" class="property-label"><g:message code="usuario.tiempoDisponible.label" default="Tiempo Disponible" /></span>
					
						<span class="property-value" aria-labelledby="tiempoDisponible-label"><g:fieldValue bean="${usuarioInstance}" field="tiempoDisponible"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.naciemiento}">
				<li class="fieldcontain">
					<span id="naciemiento-label" class="property-label"><g:message code="usuario.naciemiento.label" default="Naciemiento" /></span>
					
						<span class="property-value" aria-labelledby="naciemiento-label"><g:formatDate date="${usuarioInstance?.naciemiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.adminGyms}">
				<li class="fieldcontain">
					<span id="adminGyms-label" class="property-label"><g:message code="usuario.adminGyms.label" default="Admin Gyms" /></span>
					
						<g:each in="${usuarioInstance.adminGyms}" var="a">
						<span class="property-value" aria-labelledby="adminGyms-label"><g:link controller="gimnasio" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.certificadoAlDia}">
				<li class="fieldcontain">
					<span id="certificadoAlDia-label" class="property-label"><g:message code="usuario.certificadoAlDia.label" default="Certificado Al Dia" /></span>
					
						<span class="property-value" aria-labelledby="certificadoAlDia-label"><g:formatBoolean boolean="${usuarioInstance?.certificadoAlDia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.coachGyms}">
				<li class="fieldcontain">
					<span id="coachGyms-label" class="property-label"><g:message code="usuario.coachGyms.label" default="Coach Gyms" /></span>
					
						<g:each in="${usuarioInstance.coachGyms}" var="c">
						<span class="property-value" aria-labelledby="coachGyms-label"><g:link controller="gimnasio" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.cuotaAlDia}">
				<li class="fieldcontain">
					<span id="cuotaAlDia-label" class="property-label"><g:message code="usuario.cuotaAlDia.label" default="Cuota Al Dia" /></span>
					
						<span class="property-value" aria-labelledby="cuotaAlDia-label"><g:formatBoolean boolean="${usuarioInstance?.cuotaAlDia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.entrenamientos}">
				<li class="fieldcontain">
					<span id="entrenamientos-label" class="property-label"><g:message code="usuario.entrenamientos.label" default="Entrenamientos" /></span>
					
						<g:each in="${usuarioInstance.entrenamientos}" var="e">
						<span class="property-value" aria-labelledby="entrenamientos-label"><g:link controller="entrenamiento" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.generado}">
				<li class="fieldcontain">
					<span id="generado-label" class="property-label"><g:message code="usuario.generado.label" default="Generado" /></span>
					
						<span class="property-value" aria-labelledby="generado-label"><g:formatDate date="${usuarioInstance?.generado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.gruposMuscularesRestringidos}">
				<li class="fieldcontain">
					<span id="gruposMuscularesRestringidos-label" class="property-label"><g:message code="usuario.gruposMuscularesRestringidos.label" default="Grupos Musculares Restringidos" /></span>
					
						<g:each in="${usuarioInstance.gruposMuscularesRestringidos}" var="g">
						<span class="property-value" aria-labelledby="gruposMuscularesRestringidos-label"><g:link controller="grupoMuscular" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.roles}">
				<li class="fieldcontain">
					<span id="roles-label" class="property-label"><g:message code="usuario.roles.label" default="Roles" /></span>
					
						<g:each in="${usuarioInstance.roles}" var="r">
						<span class="property-value" aria-labelledby="roles-label"><g:link controller="rol" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.rutinas}">
				<li class="fieldcontain">
					<span id="rutinas-label" class="property-label"><g:message code="usuario.rutinas.label" default="Rutinas" /></span>
					
						<g:each in="${usuarioInstance.rutinas}" var="r">
						<span class="property-value" aria-labelledby="rutinas-label"><g:link controller="rutina" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.userGyms}">
				<li class="fieldcontain">
					<span id="userGyms-label" class="property-label"><g:message code="usuario.userGyms.label" default="User Gyms" /></span>
					
						<g:each in="${usuarioInstance.userGyms}" var="u">
						<span class="property-value" aria-labelledby="userGyms-label"><g:link controller="gimnasio" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
