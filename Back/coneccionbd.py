
#se hace el crud de la tabla usuarios
import  mysql.connector

class Conectar():
    def __init__(self)->None:
        try:
            self.conexion= mysql.connector.connect(
                host ='localhost',
                database='app_viajeros_db',
                user='root',
                password='',
                port=3306
            )
        except mysql.connector.Error as descripcionErrores:
            print("no se conecto !", descripcionErrores)
            
    #primera operacion del crud : create o insert
            
    def InsertarValor(self, nombre, contrasenia, correo, rol):
        #recibe los datos del formulario de registro 
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL= "INSERT INTO usuario (nombre, contrasenia, correo, rol) VALUES(%s, %s, %s, %s); "
                #se recibe los datos de la pagina de registro y se reciben los datos 
                data= (nombre, contrasenia,correo, rol)
                cursor.execute(sentenciaSQL,data)
                self.conexion.commit()
                self.conexion.close()
                
            except:
                print("no se pudo conectar a la base de datos")
                
    # segunda operacion del crud : read o leer
    def BuscarUsuario(self):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL = "SELECT * from usuario"
                cursor.execute(sentenciaSQL)
                 #guardan los datos
                resultadoREAD= cursor.fetchall()
                self.conexion.close()
                 #retornan los datos 
                return resultadoREAD
            except:
                print("no se pudo conectar a la base de datos")
                
    #operacion de delete o eliminar
    def EliminarUsuario(self,ID):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL = "DELETE FROM usuario where id_usuario = ID"
                cursor.execute(sentenciaSQL)
                self.conexion.commit()
                self.conexion.close()
            except:
                print("no se pudo conectar a la base de datos")
                
    #actualizar 
    def ActualizarUsuario(self, ID):
        #recibe los datos del formulario de registro 
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL= "UPDATE INTO usuario where id_usuario = ID; "
                #se recibe los datos de la pagina de registro se captura el id
                
                cursor.execute(sentenciaSQL)
                self.conexion.commit()
                self.conexion.close()
                
            except:
                print("no se pudo conectar a la base de datos")
                
                

    
                