<%@ page import="rutina.Sesion" %>



<div class="fieldcontain ${hasErrors(bean: sesionInstance, field: 'fecha', 'error')} ">
	<label for="fecha">
		<g:message code="sesion.fecha.label" default="Fecha" />
		
	</label>
	<g:datePicker name="fecha" precision="day"  value="${sesionInstance?.fecha}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: sesionInstance, field: 'acciones', 'error')} ">
	<label for="acciones">
		<g:message code="sesion.acciones.label" default="Acciones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${sesionInstance?.acciones?}" var="a">
    <li><g:link controller="accion" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="accion" action="create" params="['sesion.id': sesionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'accion.label', default: 'Accion')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: sesionInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="sesion.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${sesionInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sesionInstance, field: 'generado', 'error')} required">
	<label for="generado">
		<g:message code="sesion.generado.label" default="Generado" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="generado" precision="day"  value="${sesionInstance?.generado}"  />

</div>

