const email = document.getElementById("email_admin")
const pass = document.getElementById("password_admin")
const parrafo = document.getElementById("warnings")

form.addEventListener("submit", e=>{
    e.preventDefault()
    let warnings = ""
    let entrar = false
    let regexEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    let passtest = /^\w+[a-z0-9]$/;
    parrafo.innerHTML = ""
   
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