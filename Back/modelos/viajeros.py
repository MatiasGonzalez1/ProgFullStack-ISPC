class viajeros:
    __id_Publicacion = 0
    __id_Usuario = 0
    __id_Localidad = 0
    __Nombre_pub = ..
    __Descripcion_pub = ..
    __Imagen_pub = ..
    __id_Comentario = 0
    #constructor
    def __init__(self, id_publicacion, id_usuario, id_localidad, nombre_pub, descripcion_pub, imagen_pub, id_comentario):
        self.__id_Publicacion = id_publicacion
        self.__id_Usuario = id_usuario
        self.__id_Localidad = id_localidad
        self.__Nombre_pub = nombre_pub
        self.__Descripcion_pub = descripcion_pub
        self.__Imagen_pub = imagen_pub
        self.__id_Comentario = id_comentario

    #getters y setters
    
    def get_id_Publicacion(self):
        return self.__id_Publicacion
    def set_id_Publicacion(self, id_publicacion):
        self.__id_Publicacion = id_publicacion

    def get_id_Usuario(self):
        return self.__id_Usuario
    def set_id_Usuario(self, id_usuario):
        self.__id_Usuario = id_usuario

    def get_id_Localidad(self):
        return self.__id_Localidad
    def set_id_Localidad(self, id_localidad):
        self.__id_Localidad = id_localidad

    def get_Nombre_pub(self):
        return self.__Nombre_pub
    def set_Nombre_pub(self, Nombre_pub):
        self.__Nombre_pub = nombre_pub

    def get_Descripcion_pub(self):
        return self.__Descripcion_pub
    def set_Descripcion_pun(self, descripcion_pub):
        self.__Descripcion_pub = descripcion_pub

    def get_Imagen_pub(self):
        return self.__Imagen_pub
    def set_Imagen_pub(self, imagen_pub):
        self.__Imagen_pub = imagen_pub

    def get_id_Comentario(self):
        return self.__id_Comentario
    def set_id_Comentario(self, id_comentario):
        self.__id_Comentario = id_comentario
    
