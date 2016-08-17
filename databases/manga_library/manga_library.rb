=begin
	-Create application to keep track of manga library
	-Create table of publishers
	-Create table of manga	
	-Create method to search through library
	-Create method to add to library
	-Create method to delete from library
	-Create method to display all of library
=end

require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("manga.db")
db.results_as_hash = true

# create publisher table
create_publisher_table = <<-SQL
	CREATE TABLE IF NOT EXISTS publisher(
		id INTEGER PRIMARY KEY,
		publisher VARCHAR(255)
	)
SQL

# create manga table
create_manga_table = <<-SQL
	CREATE TABLE IF NOT EXISTS manga(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		author VARCHAR(255),
		volume INT,
		complete BOOLEAN,
		publisher_id INT,
		FOREIGN KEY (publisher_id) REFERENCES publisher(id)
	)
SQL

# create the tables
db.execute(create_publisher_table)
db.execute(create_manga_table)

#DRIVER CODE

#add test company
# db.execute("INSERT INTO publisher (publisher) VALUES ('Viz')")
# db.execute("INSERT INTO publisher (publisher) VALUES ('Yen Press')")
# db.execute("INSERT INTO publisher (publisher) VALUES ('Tokyopop')")
# db.execute("INSERT INTO publisher (publisher) VALUES ('Dark Horse Manga')")

#add test manga
# db.execute("INSERT INTO manga (title, author, volume, complete, publisher_id) VALUES ('Demon Diary', 'Kara', 1, 'true', 3)")

def 


#USER INTERFACE