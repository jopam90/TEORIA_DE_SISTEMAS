function Validar() {
                var usu = document.getElementById('usu').value;
                var pass = document.getElementById('pass').value;
                var fecha = document.getElementById('fecha').value;
                if (usu != '') {
                    if (pass != '') {
                        document.forms["frm"].submit();
                        
                    } else {
        document.getElementById('error').innerHTML='Ingrese un password';
        swal("ERROR","Ingrese un password", "error");
                        
                    }
                } else {
        document.getElementById('error').innerHTML='Ingrese un usuario';
        swal("ERROR","Ingrese un usuario", "error");
                  
                }
            }
            
function startTime(){
    var hoy = new Date();
    var hora = hoy.getHours();
    var minuto = hoy.getMinutes();
    var segundos = hoy.getSeconds();
    minuto = verTiempo(minuto);
    segundos = verTiempo(segundos);
    document.getElementById('fechaHoy').innerHTML = hora + ":" + minuto + ":" + segundos;
    var t = setTimeout(startTime, 500);    
}
            
function verTiempo(i){
    if(i < 10){
        i = "0" + i;        
    };
    return i;
}

function verMapa(){
    document.getElementById('ubicacion').hidden = !document.getElementById('ubicacion').hidden;
}

function enter(){
   if(document.getElementById("ingreso").style.display === "none"){
       
       document.getElementById("ingreso").style.display='block';
   }
   else{
       document.getElementById("ingreso").style.display="none";
       
   }

    
    
}