import mysql.connector

try:
    connection = mysql.connector.connect(
        host = 'localhost',
        port = 3306,
        user = 'root',
        password = '',
        db = 'app_viajeros_db'
    )

  # mySql_query = "select * from productos"
    mySql_query = "select * from usuario"

    cursor = connection.cursor()
    cursor.execute(mySql_query)
   
    rows=cursor.fetchall()
    for row in rows:
    	print(row)

   
except mysql.connector.Error as error:
    print("Failed to insert record into Laptop table {}".format(error))

finally:
    if connection.is_connected():
        connection.close()
        print("MySQL connection is closed")
