const boton = document.getElementById("form")


boton.onsubmit= function(e){
    e.preventDefault()
    Swal.fire({
            
        position: 'center',
        icon: 'success',
        title: 'Mensaje Enviado',
        text:'Pronto nos contactaremos',
        showConfirmButton: false,
        timer: 1500
        
      })
   
                  
        
        setTimeout(function(){
            window.location.href = "../../Front/vistas/index.html";
        }, 3000)

    

}