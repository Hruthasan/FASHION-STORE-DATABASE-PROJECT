import mysql.connector

# Establish a connection to the database
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="mandeep",
  database="fashion_store"
)

# Create a cursor to execute queries
mycursor = mydb.cursor()

# Write a SQL query to retrieve data from a table
mycursor.execute("SELECT * FROM orders")

# Retrieve the result set
myresult = mycursor.fetchall()

# Open a file to write the report to
with open("report.txt", "w") as f:
  # Write a header row
  f.write("ID\tName\tAddress\tPhone\n")
  
  # Loop through the result set and write each row to the file
  for row in myresult:
    f.write(f"{row[0]}\t{row[1]}\t{row[2]}\t{row[3]}\n")

# Close the database connection
mydb.close()
