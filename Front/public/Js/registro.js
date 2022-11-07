window.addEventListener("load", (e) => {
  //capturando inputs y form
  let inputName = document.querySelector("#inputName");
  let inputEmail = document.querySelector("#inputEmail");
  let inputPass = document.querySelector("#password");
  let inputPass2 = document.querySelector("#rePassword");

  let formulario = document.querySelector("form");

  let arrInp = [inputEmail, inputPass, inputPass2, inputName];

  formulario.addEventListener("submit", (e) => {
    arrInp.forEach((inp) => {
      if (inp.value.length < 1) {
        inp.classList.add("is-invalid");
        inp.nextElementSibling.classList.add('err')
        inp.nextElementSibling.innerHTML = 'Éste campo no puede estar vacío'        
        e.preventDefault();
      }
      if (inp.value != "") {
        inp.classList.remove("is-invalid");        
        inp.nextElementSibling.classList.remove('err')
      }
    });
  });

  inputName.addEventListener("blur", () => {
    let mostrar = document.querySelector("#errName");
    if (inputName.value == "") {
      inputName.classList.add("is-invalid");
      inputName.nextElementSibling.classList.add('err')
      mostrar.innerHTML = "El campo nombre no puede estar vacío";
    }
  });

  inputName.addEventListener("keydown", ()=>{
    let mostrar = document.querySelector("#errName");
    if(inputName.value.length < 3){
      inputName.classList.add("is-invalid");
      inputName.nextElementSibling.classList.add('err')
      mostrar.innerHTML = "El campo nombre debe tener almenos cuatro carácteres";
    }else{
      inputName.classList.remove("is-invalid");
      inputName.nextElementSibling.classList.remove('err')
      mostrar.innerHTML = "";
    }
  });

  inputEmail.addEventListener("blur", () => {
    let mostrar = document.querySelector("#errEmail");
    if (inputEmail.value == "") {
      inputEmail.classList.add("is-invalid");
      inputEmail.nextElementSibling.classList.add('err')
      mostrar.innerHTML = "El campo email no puede estar vacío";
    }
  });

  inputEmail.addEventListener("input", () => {
    let mostrar = document.querySelector("#errEmail");
    const emailValido = (email) => {
      return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    };
    if (inputEmail.value.length < 3) {
      inputEmail.classList.add("is-invalid");
      inputEmail.nextElementSibling.classList.add('err')
      mostrar.innerHTML = "El campo debe tener más de cuatro carácteres";
      return;
    } else if (!emailValido(inputEmail.value)) {
      inputEmail.classList.add("is-invalid");
      inputEmail.nextElementSibling.classList.add('err')
      mostrar.innerHTML = "Debe de ingresarse un email válido";
    } else {
      inputEmail.classList.remove("is-invalid");
      inputEmail.nextElementSibling.classList.remove('err')
      mostrar.innerHTML = "";
    }
  });

  inputPass.addEventListener("blur", () => {
    let mostrar = document.querySelector("#pass1");
    if (inputPass.value == "") {
      inputPass.classList.add("is-invalid");
      inputPass.nextElementSibling.classList.add('err');
      mostrar.innerHTML = "El campo contraseña no puede estar vacío";
    } 
  });


  inputPass.addEventListener("input", () => {
    const password = /^(?=.*[0-9])(?=.*[!@#$_.^&*])[a-zA-Z0-9!@#$_.^&*]{8,16}$/;
    let mostrar = document.querySelector("#pass1");
    if (inputPass.value.length < 8) {
      inputPass.classList.add("is-invalid");
      inputPass.nextElementSibling.classList.add('err');
      mostrar.innerHTML = "El campo debe tener más de ocho carácteres";
    } 
    else if(!inputPass.value.match(password)){
      inputPass.classList.add("is-invalid");
      inputPass.nextElementSibling.classList.add('err');
      mostrar.innerHTML = "La contraseña debe tener una mayúscula una minúscula un numero y un caracter especial"
    }
    else {
      inputPass.classList.remove("is-invalid");
      mostrar.innerHTML = "";
    }
  });

  inputPass2.addEventListener("blur", () => {
    let mostrar = document.querySelector("#pass2");
    if (inputPass.value == "") {
      inputPass2.classList.add("is-invalid");
      inputPass2.nextElementSibling.classList.add('err');
      mostrar.innerHTML = "El campo repetir contraseña no puede estar vacío";
    } 
  });

  inputPass2.addEventListener("input", ()=>{
    let mostrar = document.querySelector("#pass2");
    if(inputPass.value != inputPass2.value){
      inputPass2.classList.add("is-invalid");
      inputPass2.nextElementSibling.classList.add('err');
      mostrar.innerHTML = "Las contraseñas no coinciden";
    }else {
        inputPass2.classList.remove("is-invalid");
        inputPass2.nextElementSibling.classList.remove('err');
        mostrar.innerHTML = "";
      }
    })



});