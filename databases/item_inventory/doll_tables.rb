#Keep table creation code separate
#Create all the necessary tables 

require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("inventory.db")

# create company table
create_company_table = <<-SQL
	CREATE TABLE IF NOT EXISTS company(
	    id INTEGER PRIMARY KEY,
	    name VARCHAR(255),
	    active BOOLEAN
  )
SQL

create_item_table = <<-SQL
 	CREATE TABLE IF NOT EXISTS item (
	  	id INTEGER PRIMARY KEY,
		item_name VARCHAR(255), 
		item_desc BLOB,
		size INT,
		selling BOOLEAN,
		FOREIGN KEY (company_id) REFERENCES company(id)
	)
SQL

create_selling_table = <<-SQL
 CREATE TABLE IF NOT EXISTS selling (
 		original_price FLOAT(5,2),
		selling_price FLOAT (5,2), 
		company_id INT,
		item_id INT,
		FOREIGN KEY (company_id) REFERENCES company(id),
		FOREIGN KEY (item_id) REFERENCES item(id)
	)
SQL

# create the tables
db.execute(create_company_table)
db.execute(create_item_table)
db.execute(create_selling_table)