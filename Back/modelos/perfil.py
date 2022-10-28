class perfil_usuario:
    __id_perfil= 0
    __nombre= ""
    __apellido=""
    __imagen= ""
    
    
    
    
    def __init__(self,id_perfil, nombre, apellido, imagen):
        self.__id_perfil = id_perfil
        self.__nombre = nombre
        self.__apellido = apellido
        self.__imagen = imagen
    
     #setters
    def setId_Usuario(self,param):
        self.__id_perfil = param
    
    def setNombre(self,param):
        self.__nombre= param
    def setApellido(self,param):
        self.__apellido=param
    def setImagen(self,param):
        self.imagen=param
    
    #getters
    
    def getId_perfil(self):
            return self.__id_perfil
    def getNombre(self):
        return self.__nombre
    def getApellido(self):
        return self.__apellido
    
    def getImagen(self):
        return self.__imagen
    
        


