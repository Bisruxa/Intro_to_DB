import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="Bisru123.",
  database="alx_book_store"
)
print("Database 'alx_be_store' created successfully!")
if mydb.is_connected():
  print("Connected to MySQL database")  
else:
  print("error while connecting to MySQL database")