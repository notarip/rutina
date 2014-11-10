<%@ page import="rutina.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="15" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="usuario.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${usuarioInstance.constraints.sexo.inList}" required="" value="${usuarioInstance?.sexo}" valueMessagePrefix="usuario.sexo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tiempoDisponible', 'error')} required">
	<label for="tiempoDisponible">
		<g:message code="usuario.tiempoDisponible.label" default="Tiempo Disponible" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tiempoDisponible" type="number" min="30" value="${usuarioInstance.tiempoDisponible}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'naciemiento', 'error')} ">
	<label for="naciemiento">
		<g:message code="usuario.naciemiento.label" default="Naciemiento" />
		
	</label>
	<g:datePicker name="naciemiento" precision="day"  value="${usuarioInstance?.naciemiento}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'adminGyms', 'error')} ">
	<label for="adminGyms">
		<g:message code="usuario.adminGyms.label" default="Admin Gyms" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'certificadoAlDia', 'error')} ">
	<label for="certificadoAlDia">
		<g:message code="usuario.certificadoAlDia.label" default="Certificado Al Dia" />
		
	</label>
	<g:checkBox name="certificadoAlDia" value="${usuarioInstance?.certificadoAlDia}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'coachGyms', 'error')} ">
	<label for="coachGyms">
		<g:message code="usuario.coachGyms.label" default="Coach Gyms" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cuotaAlDia', 'error')} ">
	<label for="cuotaAlDia">
		<g:message code="usuario.cuotaAlDia.label" default="Cuota Al Dia" />
		
	</label>
	<g:checkBox name="cuotaAlDia" value="${usuarioInstance?.cuotaAlDia}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'entrenamientos', 'error')} ">
	<label for="entrenamientos">
		<g:message code="usuario.entrenamientos.label" default="Entrenamientos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioInstance?.entrenamientos?}" var="e">
    <li><g:link controller="entrenamiento" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="entrenamiento" action="create" params="['usuario.id': usuarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'entrenamiento.label', default: 'Entrenamiento')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'generado', 'error')} required">
	<label for="generado">
		<g:message code="usuario.generado.label" default="Generado" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="generado" precision="day"  value="${usuarioInstance?.generado}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'gruposMuscularesRestringidos', 'error')} ">
	<label for="gruposMuscularesRestringidos">
		<g:message code="usuario.gruposMuscularesRestringidos.label" default="Grupos Musculares Restringidos" />
		
	</label>
	<g:select name="gruposMuscularesRestringidos" from="${rutina.GrupoMuscular.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.gruposMuscularesRestringidos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'roles', 'error')} ">
	<label for="roles">
		<g:message code="usuario.roles.label" default="Roles" />
		
	</label>
	<g:select name="roles" from="${rutina.Rol.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.roles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'rutinas', 'error')} ">
	<label for="rutinas">
		<g:message code="usuario.rutinas.label" default="Rutinas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioInstance?.rutinas?}" var="r">
    <li><g:link controller="rutina" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rutina" action="create" params="['usuario.id': usuarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rutina.label', default: 'Rutina')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'userGyms', 'error')} ">
	<label for="userGyms">
		<g:message code="usuario.userGyms.label" default="User Gyms" />
		
	</label>
	

</div>

