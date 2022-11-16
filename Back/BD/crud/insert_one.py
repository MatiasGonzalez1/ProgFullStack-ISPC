import mysql.connector

try:
    connection = mysql.connector.connect(
        host = 'localhost',
        port = 3306,
        user = 'root',
        password = '',
        db = 'app_viajeros_db'
    )

    mySql_insert_query = """INSERT INTO usuario (id_usuario, nombre_usuario, contrasenia, correo, rol_id_rol) 
                           VALUES 
                           (2, 'Flavia', 'Flavia123**', 'flavia@flavia.com' 1) """

    cursor = connection.cursor()
    cursor.execute(mySql_insert_query)
    connection.commit()
    print(cursor.rowcount, "Record inserted successfully into usuarios table")
    cursor.close()

except mysql.connector.Error as error:
    print("Failed to insert record into usuarios table {}".format(error))

finally:
    if connection.is_connected():
        connection.close()
        print("MySQL connection is closed")
