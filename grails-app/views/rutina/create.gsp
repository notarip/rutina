<!DOCTYPE html>

<!--
TODO

- Arreglar el post en rutina.js
- Ver por que los select solo funcionan con el primero, por el momento saque el fancy select


-->


<html>
	<head>
		<g:set var="entityName" value="${message(code: 'rutina.label', default: 'Rutina')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
    	<meta name="layout" content="header"/>
	</head>
	<body>
		<script>
			$(function() {
				$( "#datepicker_desde" ).datepicker();
				$( "#datepicker_hasta" ).datepicker();
				$("[id^=datepicker]").datepicker( "option", "dateFormat", "dd/mm/yy" );
				$("[id^=datepicker]").datepicker({ minDate: -20, maxDate: "+1M +10D" });
				//$("#accordion").accordion({active: 1});
				$( "#crearSesion" ).click(function() {
					//postear la sesion
					//agregar una linea de accion

					alert(this);

				});
			});
		</script>

		<div id="create-rutina" role="main">
			<div >
			<div class="panel-body" style="padding-bottom: 0px; padding-top: 0px;">

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${rutinaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${rutinaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>

			<g:form action="save" >
			</div>
							<div id="rutina" class="panel panel-primary">
										<div class="panel-heading"><h3 class="panel-title">Rutina</h3></div>
									<table>
									<tr>
										<td>
											<tr>
												<th><label for="gimnasio">Gimnasio</label></th>
												<td><g:select class="selectpicker show-tick form-control" data-live-search="true" name="gimnasio" from="${gimnasios}"  value="${rutina.gimnasio}" optionKey="nombre"/></td>


												<th><label for="usuario">Usuario</label></th>
												<td><g:select class="selectpicker show-tick form-control" data-live-search="true" name="usuario" from="${usuarios}"  value="${rutina.usuario}" optionKey="nombre"/></td>


												<th><label for="desde">Desde</label></th>
												<td><input type="text" name="desde" id="datepicker_desde"></td>


												<th><label for="hasta">Hasta</label></th>
												<td><input type="text" name="hasta" id="datepicker_hasta"></td>

											</tr>
										</td>
								</tr>
								</table>


								<!-- Aca se agregan las sesiones dinamicante -->

								<div id="sesiones" class="panel panel-primary">
									<div class="panel-heading"><h3 class="panel-title">Sesiones</h3></div>
									<div  id="sesion_1" class="list-group-item">
											<!-- h4>Sesion 1</h4 -->
											<div>
											<table id="table_sesion_1">
											<tbody id="body_table_sesion_1">
											<tr>
												<th><label for="descripcion">Descripci&oacute;n</label></th>
												<td><g:textField name="descripcion" value="${sesion?.descripcion}"/></td>
												<td><button type="button" id="crearSesion_1" onClick="getSesionLine(2)" class="btn btn-xs btn-success">Crear</button></td>
											</tr>
											<div id="acciones_1">
											<tr id="accionRow_1_1">
												<div>
												<th rowspan="2" style="vertical-align:bottom;"><label for="ejercicio">Ejercicio</label></th>
												<!-- td rowspan="2" style="vertical-align:bottom;padding-bottom: 0px;"><g:select  id="ejercicio_1_1" class="selectpicker show-tick form-control" data-live-search="true" name="ejercicio" from="${ejercicios}"  value="" optionKey="nombre"/></td -->
												<td rowspan="2" style="vertical-align:bottom;padding-bottom: 0px;"><g:select  id="ejercicio_1_1" class="show-tick form-control" data-live-search="true" name="ejercicio" from="${ejercicios}"  value="" optionKey="nombre"/></td>
												<td><label for="peso">Peso</label><br><g:field id="peso_1_1" name="peso" type="number" step="0.1" maxlength="4" min="0" max="500" value="0"/></td>
												<td><label for="repeteciones">Repet.</label><br><g:field id="repeticiones_1_1"name="repeticiones" type="number" maxlength="4" min="1" max="500" value="1"/></td>
												<td><label for="series">Series</label><br><g:field id="serie_1_1" name="series" type="number" maxlength="2" min="1" max="100" value="1"/></td>
												<td><label for="descanso">Desc.</label><br><g:field id="descanso_1_1" name="descanso" type="number" maxlength="2" min="0" max="100" value="1"/></td>
												<td><label for="tiempo">Tie.(")</label><br><g:field id="tiempo_1_1" name="tiempo" type="number" maxlength="4" min="0" max="500" value="1"/></td>
												<td><label for="distancia">Dis.(km)</label><br><g:field id="distancia_1_1" name="distancia" type="number" maxlength="4" min="0" max="100" value="1"/></td>
												<td><label for="velocidad">Vel.(km/h)</label><br><g:field id="velocidad_1_1" name="velocidad" type="number" maxlength="2" min="0" max="80" value="1"/></td>
												<td><br><button type="button" id="crearAccion_1_1" onclick="getAccionLine(1,2)" class="btn btn-xs btn-success">+</button></td>
												</div>
											</tr>
											</div>
											<tbody>
											</table>
											</div>
									</div>
									</div>
								</div>
				</div>
					<!-- fieldset class="buttons">
						<g:submitButton name="create" class="btn btn-lg btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</fieldset -->
			</g:form>
		</div>
	</div>

<!-- div template para la carga de sesiones -->
<div id="template_sesiones" style="visibility: hidden;">
<div  id="sesion_nsesion" class="list-group-item">
		<!-- h4>Sesion 1</h4 -->
		<div>
		<table id="table_sesion_nsesion">
		<tbody id="body_table_sesion_nsesion">
		<hr>
		<tr>
			<th><label for="descripcion">Descripci&oacute;n</label></th>
			<td><g:textField name="descripcion" value="${sesion?.descripcion}"/></td>
			<td><button type="button" id="crearSesion_nsesion" onClick="getSesionLine(nsesion+1)"  class="btn btn-xs btn-success">Crear</button></td>
		</tr>
		<div id="acciones_nsesion">
		<tr id="accionRow_nsesion_1">
			<div>
			<th rowspan="2" style="vertical-align:bottom;"><label for="ejercicio">Ejercicio</label></th>
			<!-- td rowspan="2" style="vertical-align:bottom;padding-bottom: 0px;"><g:select  id="ejercicio_nsesion_1" class="selectpicker show-tick form-control" data-live-search="true" name="ejercicio" from="${ejercicios}"  value="" optionKey="nombre"/></td -->
			<td rowspan="2" style="vertical-align:bottom;padding-bottom: 0px;"><g:select  id="ejercicio_nsesion_1" class="show-tick form-control" data-live-search="true" name="ejercicio" from="${ejercicios}"  value="" optionKey="nombre"/></td>
			<td><label for="peso">Peso</label><br><g:field id="peso_nsesion_1" name="peso" type="number" step="0.1" maxlength="4" min="0" max="500" value="0"/></td>
			<td><label for="repeteciones">Repet.</label><br><g:field id="repeticiones_nsesion_1"name="repeticiones" type="number" maxlength="4" min="1" max="500" value="1"/></td>
			<td><label for="series">Series</label><br><g:field id="serie_nsesion_1" name="series" type="number" maxlength="2" min="1" max="100" value="1"/></td>
			<td><label for="descanso">Desc.</label><br><g:field id="descanso_nsesion_1" name="descanso" type="number" maxlength="2" min="0" max="100" value="1"/></td>
			<td><label for="tiempo">Tie.(")</label><br><g:field id="tiempo_nsesion_1" name="tiempo" type="number" maxlength="4" min="0" max="500" value="1"/></td>
			<td><label for="distancia">Dis.(km)</label><br><g:field id="distancia_nsesion_1" name="distancia" type="number" maxlength="4" min="0" max="100" value="1"/></td>
			<td><label for="velocidad">Vel.(km/h)</label><br><g:field id="velocidad_nsesion_1" name="velocidad" type="number" maxlength="2" min="0" max="80" value="1"/></td>
			<td><br><button type="button" id="crearAccion_nsesion_1" onclick="getAccionLine(nsesion,2)" class="btn btn-xs btn-success">+</button></td>
			</div>
		</tr>
		</div>
		<tbody>
		</table>
		</div>
</div>
</div>
<!-- fin del div template para las sesiones -->

<!-- div template para la carga de acciones -->

<div id="template_acciones" style="visibility: hidden;">
<table id="table_acciones_nsesion">
<tr id="accionRow_nsesion_naccion">
	<div>
	<th rowspan="2" style="vertical-align:bottom;"><label for="ejercicio">Ejercicio</label></th>
	<!-- td rowspan="2" style="vertical-align:bottom;"><g:select id="ejercicio_nsesion_naccion" class="selectpicker show-tick form-control" data-live-search="true" name="ejercicio" from="${ejercicios}"  value="" optionKey="nombre"/></td -->
	<td rowspan="2" style="vertical-align:bottom;"><g:select id="ejercicio_nsesion_naccion" class="show-tick form-control" data-live-search="true" name="ejercicio" from="${ejercicios}"  value="" optionKey="nombre"/></td>
	<td><g:field id="peso_nsesion_naccion" name="peso" type="number" step="0.1" maxlength="4" min="0" max="500" value="0"/></td>
	<td><g:field id="repeticiones_nsesion_naccion"name="repeticiones" type="number" maxlength="4" min="1" max="500" value="1"/></td>
	<td><g:field id="serie_nsesion_naccion" name="series" type="number" maxlength="2" min="1" max="100" value="1"/></td>
	<td><g:field id="descanso_nsesion_naccion" name="descanso" type="number" maxlength="2" min="0" max="100" value="1"/></td>
	<td><g:field id="tiempo_nsesion_naccion" name="tiempo" type="number" maxlength="4" min="0" max="500" value="1"/></td>
	<td><g:field id="distancia_nsesion_naccion" name="distancia" type="number" maxlength="4" min="0" max="100" value="1"/></td>
	<td><g:field id="velocidad_nsesion_naccion" name="velocidad" type="number" maxlength="2" min="0" max="80" value="1"/></td>
	<td><button type="button" id="crearAccion_nsesion_naccion" onclick="getAccionLine(nsesion,naccion+1)" class="btn btn-xs btn-success">+</button></td>
</div>
</tr>
</table>
</div>

<!-- fin del div template para la carga de acciones -->



	</body>
</html>
