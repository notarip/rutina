<%@ page import="rutina.Accion" %>



<div class="fieldcontain ${hasErrors(bean: accionInstance, field: 'ejercicio', 'error')} required">
	<label for="ejercicio">
		<g:message code="accion.ejercicio.label" default="Ejercicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ejercicio" name="ejercicio.id" from="${rutina.Ejercicio.list()}" optionKey="id" required="" value="${accionInstance?.ejercicio?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accionInstance, field: 'entrenamiento', 'error')} ">
	<label for="entrenamiento">
		<g:message code="accion.entrenamiento.label" default="Entrenamiento" />
		
	</label>
	<g:select id="entrenamiento" name="entrenamiento.id" from="${rutina.Entrenamiento.list()}" optionKey="id" value="${accionInstance?.entrenamiento?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accionInstance, field: 'sesion', 'error')} ">
	<label for="sesion">
		<g:message code="accion.sesion.label" default="Sesion" />
		
	</label>
	<g:select id="sesion" name="sesion.id" from="${rutina.Sesion.list()}" optionKey="id" value="${accionInstance?.sesion?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accionInstance, field: 'generado', 'error')} required">
	<label for="generado">
		<g:message code="accion.generado.label" default="Generado" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="generado" precision="day"  value="${accionInstance?.generado}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: accionInstance, field: 'series', 'error')} ">
	<label for="series">
		<g:message code="accion.series.label" default="Series" />
		
	</label>
	<g:select name="series" from="${rutina.Serie.list()}" multiple="multiple" optionKey="id" size="5" value="${accionInstance?.series*.id}" class="many-to-many"/>

</div>

