import mysql.connector

try:

    mydb = mysql.connector.connect(
        host="localhost",
        user="username",
        password="password"
    )

    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_stores")
    print("Database 'alx_book_stores' created sucessfully!")


except mysql.connector.Error as e:
    print(f"Error: {e}")

finally:
    if mydb.is_connected():
        mycursor.close()
        mydb.close()
