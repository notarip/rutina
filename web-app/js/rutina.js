


function getSesionLine(sesion){

  $("#sesiones").append(getAppendSesionContent(sesion));


}

function getAccionLine(sesion, accion){

  //$("#acciones_"+sesion).append(getAppendAccionContent(sesion,accion));
  $("#table_sesion_"+sesion).append(getAppendAccionContent(sesion,accion));

  //$("template_acciones").append(getAppendAccionContent(sesion,accion));


}


function getAppendAccionContent(sesion, accion){

  //var doc = $("#template_acciones").html();
  //var doc = $("#accionRow_nsesion_naccion").html();
  var doc = $("#table_acciones_nsesion").html();


  doc = doc.replace(/nsesion/g,sesion);
  doc = doc.replace(/naccion/g,accion);


  //doc = doc.replace(/\<\/tbody\>/g,"");
  //doc = doc.replace(/\<\/table\>/g,"");
  //doc = doc.replace(/\<tbody\>/g,"");
  //doc = doc.replace(/\<table\>/g,"");



  return doc;

}

function getAppendSesionContent(sesion){

  var doc = $("#template_sesiones").html();

  doc = doc.replace(/nsesion/g,sesion);

  return doc;
}
