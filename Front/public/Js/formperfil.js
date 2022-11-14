
  /*previsualizacion imagen seleccionada     */
  const $seleccionArchivos= document.querySelector('#seleccionArchivos')
  $imagenPrevisualizacion=document.querySelector('#imagenPrevisualizacion')
  console.log($imagenPrevisualizacion)
  //escucha cuando cambia 
  $seleccionArchivos.addEventListener('change', ()=>{
    //los archivos seleccionados solo uno o varios
    const archivos = $seleccionArchivos.files
    // si no hay imagen salimos salimos de la funcion y quitamos la imagen 
    if(!archivos || !archivos.length){
      $imagenPrevisualizacion.src="";
      return
    }
    // se toma el primer archivo que es el  que se previsualiza 
    const primerArchivo =archivos[0]
    console.log(primerArchivo)
    //se lo convierte objectURL
    const objectURL= URL.createObjectURL(primerArchivo)
    // y se pone la imagen en objectURL
    $imagenPrevisualizacion.src=objectURL
    console.log(objectURL)

  })


  //valida que todo este lleno antes de guardar los datos de perfil del usuario 

  const guardarPerfil =document.querySelector("#form")
  
  guardarPerfil.onsubmit= function(e){
    e.preventDefault()

    
    Swal.fire({
            
        position: 'center',
        icon: 'success',
        title: 'Perfil generado',
        text:'Disfruta ser Miembro',
        showConfirmButton: false,
        timer: 1500
        
      })
   
                  
        
        setTimeout(function(){
            window.location.href = "../../Front/vistas/index.html";
        }, 3000)




  }