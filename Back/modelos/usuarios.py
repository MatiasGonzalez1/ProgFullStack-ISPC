class Usuario:        
    
        __id_usuario = 0
        __id_rol= 0
        __id_perfil= 0
        __nombre_usuario= ""
        __contrasenia= ""
        __correo=""
        
        #constructor
        def __init__(self, id_usuario, id_rol, id_perfil, nombre_usuario, contrasenia, correo):
            self.__id_usuario= id_usuario
            self.__id_rol= id_rol
            self.__id_perfil= id_perfil
            self.__nombre_usuario= nombre_usuario
            self.__contrasenia = contrasenia
            self.__correo = correo
            
        
        #setters
        def setId_Usuario(self,param):
            self.__id_usuario = param
        def setId_rol(self,param):
            self.__id_rol=param
        def setId_perfil(self,param):
            self.__id_perfil=param
        def setNombre_Usuario(self, param):
            self.__nombre_usuario= param
        def setContrasenia(self,param):
            self.__contrasenia= param
        def setCorreo(self,param):
            self.__correo= param
            
        
        #getters
        
        def getId_Usuario(self):
            return self.__id_usuario 
        
        def getId_Rol(self):
            return self.__id_rol
        
        def getid_Perfil(self):
            return self.__id_perfil
        
        def getNombre_Usuario(self):
            return self.__nombre_usuario
        def getContrasenia(self):
            return self.__contrasenia
        def getCorreo(self):
            return self.__correo
        
    