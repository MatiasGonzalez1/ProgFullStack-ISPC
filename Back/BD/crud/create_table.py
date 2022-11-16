import mysql.connector
try:
    connection = mysql.connector.connect(
        host = 'localhost',
        port = 3306,
        user = 'root',
        password = '',
        db = 'app_viajeros_db'
    )

    mySql_Create_Table_Query = """CREATE TABLE tablita( 
                             Id int(11) NOT NULL,
                             Name varchar(250) NOT NULL,
                             Price float NOT NULL,
                             Purchase_date Date NOT NULL,
                             PRIMARY KEY (Id))"""

    cursor = connection.cursor()
    result = cursor.execute(mySql_Create_Table_Query)
    print("Tabla creada con exito !! ")

except mysql.connector.Error as error:
    print("Failed to create table in MySQL: {}".format(error))
finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed")
