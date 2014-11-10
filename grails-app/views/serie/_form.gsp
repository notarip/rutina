<%@ page import="rutina.Serie" %>



<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'peso', 'error')} required">
	<label for="peso">
		<g:message code="serie.peso.label" default="Peso" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="peso" value="${fieldValue(bean: serieInstance, field: 'peso')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'repeticiones', 'error')} required">
	<label for="repeticiones">
		<g:message code="serie.repeticiones.label" default="Repeticiones" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="repeticiones" type="number" min="0" value="${serieInstance.repeticiones}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'series', 'error')} required">
	<label for="series">
		<g:message code="serie.series.label" default="Series" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="series" type="number" min="1" value="${serieInstance.series}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'descanso', 'error')} required">
	<label for="descanso">
		<g:message code="serie.descanso.label" default="Descanso" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="descanso" type="number" min="0" value="${serieInstance.descanso}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'distancia', 'error')} required">
	<label for="distancia">
		<g:message code="serie.distancia.label" default="Distancia" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="distancia" type="number" value="${serieInstance.distancia}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'generado', 'error')} required">
	<label for="generado">
		<g:message code="serie.generado.label" default="Generado" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="generado" precision="day"  value="${serieInstance?.generado}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'tiempo', 'error')} required">
	<label for="tiempo">
		<g:message code="serie.tiempo.label" default="Tiempo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tiempo" type="number" value="${serieInstance.tiempo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'velocidad', 'error')} required">
	<label for="velocidad">
		<g:message code="serie.velocidad.label" default="Velocidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="velocidad" value="${fieldValue(bean: serieInstance, field: 'velocidad')}" required=""/>

</div>

