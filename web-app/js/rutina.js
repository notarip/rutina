
function getSesionLine(sesion){

  var ssesion = sesion-1;

  $("#crearSesion_"+ssesion).attr('disabled','disabled');
  //$("#sesion_"+ssesion).removeClass("active");

  $("#sesiones").append(getAppendSesionContent(sesion));

  //$("#sesion_"+sesion).addClass("active");
}

function getAccionLine(sesion, accion){

  var saccion = accion-1;

  var data = extractAccion(sesion, saccion);

  $.post( "createAccion", data)
    .done(function( data ) {
        alert( "Data Loaded: " + data );
    })
    .fail(function(data) {
      alert( "error " + $.param(data) );
    });

  $("#crearAccion_"+sesion+"_"+saccion).attr('disabled','disabled');
  $("#table_sesion_"+sesion).append(getAppendAccionContent(sesion,accion));

}

function extractAccion(sesion, accion){

  var accionAttr = ["peso","ejercicio","repeticiones","serie","descanso","tiempo","distancia","velocidad"];
  var json = {};
  var data =[];

  $.each(accionAttr,function(index,value){

      json[value] = $("#"+value+"_"+sesion+"_"+accion).val();
  });
  //json.push(data);

  return json;

}


function getAppendAccionContent(sesion, accion){

  var doc = $("#table_acciones_nsesion").html();

  doc = doc.replace(/nsesion/g,sesion);
  doc = doc.replace(/naccion/g,accion);

  return doc;

}

function getAppendSesionContent(sesion){

  var doc = $("#template_sesiones").html();

  doc = doc.replace(/nsesion/g,sesion);

  return doc;
}
