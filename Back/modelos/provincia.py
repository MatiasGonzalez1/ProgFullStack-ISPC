from hashlib import new
from turtle import st
#class provincia
class Provincia:
  __id_Provincia = 0
  __nombre_Provincia=''


  def __init__(self, id_provincia, nombre_provincia ):
    self.__id_Provincia = id_provincia
    self.__nombre_Provincia = nombre_provincia

    
  def get_id_Provincia(self):
    return self.__id_Provincia
    
  def set_id_Provincia(self, id_provincia):
    self.__id_Provincia = id_provincia
  
  def get_nombre_Provincia(self):
    return self.__nombre_Provincia
    
  def set_nombre_Provincia(self,nombre_provincia):
    self.__nombre_Provincia = nombre_provincia
  

def __str__(self):
    return('provincia: ' + str( id_provincia))

#class localidad
class Localidad:
  __id_Localidad = 0
  __Nombre_localidad = ''

  def __init__(self, id_localidad, nombre_localidad):
    self.__id_Localidad = id_localidad
    self.__Nombre_localidad = nombre_localidad

  def get_id_Localidad(self):
    return self.__id_Localidad

  def set_id_Localidad(self,id_localidad):
    self.__id_Localidad= id_localidad

  def get_Nombre_localidad (self):
    return self.__Nombre_localidad

  def set_Nombre_localidad (self, nombre_localidad ):
    self.__Nombre_localidad  = nombre_localidad


def __str__(self):
  return ('localidad: ' + str(id_localidad))