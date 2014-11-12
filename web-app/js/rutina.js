


function getSesionLine(nro){

  $("#sesiones").append(getAppendSesionContent(nro));


}

function getAccionLine(){

  return "";
}


function getAppendSesionContent(nro){


  var doc = $("#template_sesiones").html();


  doc = doc.replace(/nsesion/g,nro)

  return doc;

  // ver como ajustar el bandoñon
}
