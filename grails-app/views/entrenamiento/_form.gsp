<%@ page import="rutina.Entrenamiento" %>



<div class="fieldcontain ${hasErrors(bean: entrenamientoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="entrenamiento.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${entrenamientoInstance.constraints.tipo.inList}" required="" value="${entrenamientoInstance?.tipo}" valueMessagePrefix="entrenamiento.tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrenamientoInstance, field: 'acciones', 'error')} ">
	<label for="acciones">
		<g:message code="entrenamiento.acciones.label" default="Acciones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${entrenamientoInstance?.acciones?}" var="a">
    <li><g:link controller="accion" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="accion" action="create" params="['entrenamiento.id': entrenamientoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'accion.label', default: 'Accion')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: entrenamientoInstance, field: 'generado', 'error')} required">
	<label for="generado">
		<g:message code="entrenamiento.generado.label" default="Generado" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="generado" precision="day"  value="${entrenamientoInstance?.generado}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: entrenamientoInstance, field: 'rutina', 'error')} required">
	<label for="rutina">
		<g:message code="entrenamiento.rutina.label" default="Rutina" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rutina" name="rutina.id" from="${rutina.Rutina.list()}" optionKey="id" required="" value="${entrenamientoInstance?.rutina?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrenamientoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="entrenamiento.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${rutina.Usuario.list()}" optionKey="id" required="" value="${entrenamientoInstance?.usuario?.id}" class="many-to-one"/>

</div>

