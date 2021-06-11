const nombre = document.getElementById("nom_usu")
const pass = document.getElementById("password_usu")
const apmat = document.getElementById("apmat")
const appat = document.getElementById("appat")
const parrafo = document.getElementById("warnings")

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("registro").addEventListener('submit', validarFormulario); 
  });


function validarFormulario(evento) {
    evento.preventDefault();
    let warnings = ""
    let entrar = false
    let passtest = /^\w+[a-z0-9]$/;
    let nomtest = /^\w+[a-z]$/;
    
    
    if(nombre.value.length < 3 || nombre.value.length >12) {
        alert('El nombre debe tener entre 3 y 12 caracteres');
        return;
        
    }
    if(!nomtest.test(nombre.value)){
        alert('El nombre solo lleva letras');
        return;
        
    }
    if(appat.value.length < 3 || appat.value.length >12) {
        alert('El apellido paterno debe tener entre 3 y 12 caracteres');
        return;
        
    }
    if(!nomtest.test(appat.value)){
        alert('El apellido paterno solo lleva letras');
        return;
    }
    if(apmat.value.length < 3 || apmat.value.length >12) {
        alert('El apellido materno debe tener entre 3 y 12 caracteres');
        return;
        
    }
    if(!nomtest.test(apmat.value)){
        alert('El apellido materno solo lleva letras');
        return;
    }
    if(pass.value.length < 3 || pass.value.length >12 || !passtest.test(pass.value)){
        alert('La contraseña solo lleva letras y numeros y debe tener entre 3 y 12 caracteres');
        return;
    
    }
   
    
    
    
    this.submit();
    
}