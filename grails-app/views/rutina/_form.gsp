<%@ page import="rutina.Rutina" %>



<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'gimnasio', 'error')} ">
	<label for="gimnasio">
		<g:message code="rutina.gimnasio.label" default="Gimnasio" />
		
	</label>
	<g:select id="gimnasio" name="gimnasio.id" from="${rutina.Gimnasio.list()}" optionKey="id" value="${rutinaInstance?.gimnasio?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'inicio', 'error')} ">
	<label for="inicio">
		<g:message code="rutina.inicio.label" default="Inicio" />
		
	</label>
	<g:datePicker name="inicio" precision="day"  value="${rutinaInstance?.inicio}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'fin', 'error')} ">
	<label for="fin">
		<g:message code="rutina.fin.label" default="Fin" />
		
	</label>
	<g:datePicker name="fin" precision="day"  value="${rutinaInstance?.fin}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'generado', 'error')} required">
	<label for="generado">
		<g:message code="rutina.generado.label" default="Generado" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="generado" precision="day"  value="${rutinaInstance?.generado}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="rutina.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${rutinaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'sesiones', 'error')} ">
	<label for="sesiones">
		<g:message code="rutina.sesiones.label" default="Sesiones" />
		
	</label>
	<g:select name="sesiones" from="${rutina.Sesion.list()}" multiple="multiple" optionKey="id" size="5" value="${rutinaInstance?.sesiones*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="rutina.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${rutina.Usuario.list()}" optionKey="id" required="" value="${rutinaInstance?.usuario?.id}" class="many-to-one"/>

</div>

