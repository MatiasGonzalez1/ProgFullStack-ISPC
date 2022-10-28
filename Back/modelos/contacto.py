#class contacto
#class tipo_asunto

class contacto:
    __id_contacto= 0
    __id_asunto = 0
    __correo = ''
    __nombre = ''
    __apellido = ''
    __mensaje= ''
    __telefono= 0
    
    def __init__(self, id_contacto, id_asunto, correo, nombre, apellido, mensaje, telefono):
        self.__id_contacto= id_contacto
        self.__id_asunto= id_asunto
        self.__correo = correo
        self.__nombre= nombre
        self.__apellido= apellido
        self.__mensaje= mensaje
        self.__telefono=telefono


    # setters
    def setId_contacto(self, param):
        self.__id_contacto= param    
    def setId_asunto(self,param):
        self.__id_contacto=param
    def setCorreo(self, param):
        self.__correo=param
    def setNombre(self,param):
        self.__nombre=param
    def setApellido(self,param):
        self.__apellido=param
    def setMensaje(self,param):
        self.__mensaje=param

    def setTelefono(self,param):
        self.__telefono=param
   #getter
    def getId_contacto(self):
        return self.__id_contacto
    def getId_asunto(self):
        return self.__id_asunto
    def getCorreo(self):
        return self.__correo
    def getNombre(self):
        return self.__nombre
    def getApellido(self):
        return self.__apellido
    def getMensaje(self):
        return self.__mensaje
    def getTelefono(self):
        return self.__telefono








class tipo_asunto:
    __id_tipo_asunto= 0
    __nombre_asunto = ""

    def __init__(self, id_tipo_asunto, nombre_asunto):
        self.__id_tipo_asunto=id_tipo_asunto
        self.__nombre_asunto=nombre_asunto

    #setter
    def setId_tipoasunto(self, param):
        self.__id_tipo_asunto=param
    def setNombre_asunto(self,param):
        self.__nombre_asunto=param
    #getter
    def getId_tipoasunto(self):
        return self.__id_tipo_asunto
    def getNombre_asunto(self):
        return self.__nombre_asunto
