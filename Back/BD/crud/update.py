import mysql.connector

try:
    connection = mysql.connector.connect(
        host = 'localhost',
        port = 3306,
        user = 'root',
        password = '',
        db = 'app_viajeros_db'
    )

    mySql_insert_query = " UPDATE usuario SET  nombre_usuario='Rojelio' WHERE id_usuario='1';"

    
    cursor = connection.cursor()
    cursor.execute(mySql_insert_query)
    connection.commit()
    print(cursor.rowcount, "registro(s) actualizado") 

except mysql.connector.Error as error:
    print("Failed to set into MySQL table {}".format(error))

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed")
