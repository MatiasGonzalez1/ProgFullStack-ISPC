from datetime import date
from usuarios import Usuario
#estructura de la clase
class Paquete(Usuario):
  __id_Paquete = 0
  __id_Usuario = Usuario.getId_Usuario
  __id_TipoPaquete = 0
  __id_FormaPago = 0
  __Imagen_prod = ''
  __Descripcion_prod = ''
  __Precio = 0
  __Plazo_paquete = date
  __Fecha_operacion = date
  #constructor
  def __init__(self, id_paquete,id_tipoPaquete, id_formaPago, imagen_prod, descripcion_prod, precio, plazo_paquete, fecha_operacion):
    self.__id_Paquete = id_paquete
    self.__id_Usuario = Usuario.getId_Usuario
    self.__id_TipoPaquete = id_tipoPaquete
    self.__id_FormaPago = id_formaPago
    self.__Imagen_prod = imagen_prod
    self.__Descripcion_prod = descripcion_prod
    self.__Precio = precio
    self.__Plazo_paquete = plazo_paquete
    self.__Fecha_operacion = fecha_operacion
    
  def get_id_Paquete(self):
    return self.__id_Paquete
    
  def set_id_Paquete(self, id_paquete):
    self.__id_Paquete = id_paquete
  
  def get_id_Usuario(self):
    return self.__id_Usuario
    
  def set_id_Usuario(self, id_usuario):
    self.__id_Usuario = id_usuario
  
  def get_id_TipoPaquete(self):
    return self.__id_TipoPaquete   
  
  def set_id_TipoPaquete(self, id_tipoPaquete):
    self.__id_TipoPaquete = id_tipoPaquete
   
  def get_id_FormaPago(self):
    return self.__id_FormaPago
  
  def set_id_FormaPago(self, id_formaPago):
    self.__id_FormaPago = id_formaPago
  
  def get_Imagen_prod(self):
    return self.__Imagen_prod
  
  def set_Imagen_prod(self, imagen_prod):
    self.__Imagen_prod = imagen_prod
  
  def get_Descripcion_prod(self):
    return self.__Descripcion_prod
  
  def set_Descripcion_prod(self, descripcion_prod):
    self.__Descripcion_prod = descripcion_prod
  
  def get_Precio(self):
    return self.Precio
  
  def set_Precio(self, precio):
    self.__Precio = precio
    
  def get_Plazo_paquete(self):
    return self.__Plazo_paquete
  
  def set_Plazo_paquete(self, plazo_paquete):
    self.__Plazo_paquete = plazo_paquete
  
  def get_Fecha_operacion(self):
    return self.Fecha_operacion
  
  def set_Fecha_operacion(self, fecha_operacion):
    self.__Fecha_operacion = fecha_operacion


  def __str__(self):
    return('paquete: ' + str(id_paquete) + '\nusuario: ' + str(Usuario.getId_Usuario) + '\ntipo: ' + str(id_tipoPaquete) + '\nforma de pago: ' + str(id_formaPago) + '\nimagen: ' + imagen_prod)


# class Venta_Paquete(Paquete):
    
    
id_paquete = 1
id_usuario = 1
id_tipoPaquete = 1
id_formaPago = 1
imagen_prod = 'img_src'
descripcion_prod = 'primer producto'  
precio = 1.10
plazo_paquete = '22/11/22'
fecha_operacion = '22/11/22'

paquete1 = Paquete(id_paquete, id_usuario, id_tipoPaquete, id_formaPago, imagen_prod, descripcion_prod, precio, plazo_paquete, fecha_operacion)

print(paquete1)