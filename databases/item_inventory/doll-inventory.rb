=begin
	-Create application that allows a doll collector to keep track of items collected and mark whether item should be should
	-Create table of companies
	-Create table of items and reference back to company to determine who made the article in question
	-Create table to join company and item table along with storing possible selling price
	-Create method to search through items
	-Create method to add items
	-Create method to edit items
	-Create method to delete items
	-Create method to display all items with company info and possible selling price
	-Create user interface to ask user to search/add/delete/display all items
=end 


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

# create item
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

#create selling table
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

#View complete inventory list
inventory_list = <<-SQL
	select c.varchar, c.boolean, i.item_name, i.item_desc, i.size, i.selling, a.seqing 
SQL

def inventory_view
	db.execute(inventory_list)
end

def item_search

end

def item_add

end

def item_edit

end

def item_delete

end

#DRIVER CODE



#USER INTERFACE