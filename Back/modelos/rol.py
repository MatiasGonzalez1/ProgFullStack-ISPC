#class roll

class Rol:
    __id_rol= 0
    __nombre_rol=""
    
    
    
    def __init__(self, id_rol, nombre_rol):
        self.id_rol= id_rol
        self.nombre_rol = nombre_rol
        
    #setter
    
    def setId_rol(self, param):
        self.__id_rol=param
    def setNombre_rol(self, param):
        self.__nombre_rol=param
    
    #getter
    
    def getId_rol(self):
        return self.__id_rol
    def getNombre_rol(self):
        return self.__nombre_rol
        
    