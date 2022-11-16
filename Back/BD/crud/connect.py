import mysql.connector
from mysql.connector import Error

try:
  conexion = mysql.connector.connect(
    host = 'localhost',
    port = 3306,
    user = 'root',
    password = '',
    db = 'app_viajeros_db'
  )
  
  if conexion.is_connected():
    print('Conexión exitosa')

except:
  print('No se pudo conectar')

finally:
  if conexion.is_connected():
    conexion.close()
    print('Se cerro la conexion')