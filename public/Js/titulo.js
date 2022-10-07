const typed = new Typed('.typed', {
    strings:[
        '<i class="tituloAnimado">Bienvenidos Viajeros</i>', 
        '<i class="tituloAnimado">Aventurate y Conoce</i>',
        '<i class="tituloAnimado"> los mejores rincones</i>', 
         '<i class="tituloAnimado">de la Argentina</i>',
        
        ],
        stringsElement:'#cadenas-texto',
        typeSpeed:75,
        startDeLay:300,
        backSpeed:75,
        smartBackspace:true,
        shuffle:false,
        backDeLay:1500,
        loop:true,
        loopCount:false,
        showCursor:true,
        cursorChar:'|',
        contentType:'html'
})