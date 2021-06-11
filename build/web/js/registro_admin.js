const nombre = document.getElementById("name_admin")
const apmat = document.getElementById("apmat_admin")
const appat = document.getElementById("appat_admin")
const email = document.getElementById("email_admin")
const pass = document.getElementById("password_admin")
const form = document.getElementById("form")
const parrafo = document.getElementById("warnings")

form.addEventListener("submit", e=>{
    e.preventDefault()
    let warnings = ""
    let entrar = false
    let regexEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    let nombretest = /^\w+[a-z]$/;
    let passtest = /^\w+[a-z0-9]$/;
    parrafo.innerHTML = ""
   
    if(nombre.value.length <2 || nombre.value.length >15){
        warnings += `El nombre debe tener entre 2 y 15 caracteres <br>`
        entrar = true
    }
    if(!nombretest.test(nombre.value)){
        warnings += `El nombre no lleva numeros o simbolos <br>`
        entrar = true
    }
    if(apmat.value.length <2 || apmat.value.length >15){
        warnings += `El apellido materno debe tener entre 2 y 15 caracteres <br>`
        entrar = true
    }
    if(!nombretest.test(apmat.value)){
        warnings += `El apellido materno no lleva numeros o simbolos<br>`
        entrar = true
    }
    if(appat.value.length <2 || appat.value.length >15){
        warnings += `El apellido paterno debe tener entre 2 y 15 caracteres <br>`
        entrar = true
    }
    if(!nombretest.test(appat.value)){
        warnings += `El apellido paterno no lleva numeros o simbolos<br>`
        entrar = true
    }
    if(!regexEmail.test(email.value)){
        warnings += `El email no es valido <br>`
        entrar = true
    }
    if(pass.value.length < 8 || pass.value.length > 15){
        warnings += `La contraseña debe tener entre 8 y 15 caracteres <br>`
        entrar = true
    }
    if(!passtest.test(pass.value)){
        warnings += `El password solo debe tener numeros y letras <br>`
        entrar = true
    }
   

    if(entrar){
        parrafo.innerHTML = warnings
    }else{
        parrafo.innerHTML = "Registro exitoso"
    }
})