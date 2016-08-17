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

# display all manga
def display(db)
	display_all_manga = <<-SQL
		SELECT m.title, m.author, m.volume, m.complete, p.publisher from manga as m, publisher as p where m.publisher_id = p.id
	SQL

	db.execute(display_all_manga)
end

def add_to_library(db, title, author, volume, complete, publisher_id)
	add_library = <<-SQL
		INSERT INTO manga (title, author, volume, complete, publisher_id) VALUES (?, ?, ?, ?, ?)
	SQL

	db.execute(add_to_library)
end

def search(db,title)
	search_manga = <<-SQL
		SELECT title, author, volume FROM manga WHERE title = (?)
	SQL

	db.execute(search_manga)
end

def edit_library(db, title)
	edit = <<-SQL 
		UPDATE manga (title, author, volume, complete, publisher_id) set title = (?)
	SQL

	db.execute(edit_library)
end

def delete_from_library(db, title)
	library_delete = <<-SQL
		DELETE from manga where title = (?)
	SQL

	db.execute(delete_from_library)
end

#DRIVER CODE
p display(db)
p add_to_library(db,"Demon Diary", "Kara", 1, "true", 3)
p search(db,"Demon Diary")
p edit_library 
p delete_from_library(db, "Demon Diary")

#add test company
# db.execute("INSERT INTO publisher (publisher) VALUES ('Viz')")
# db.execute("INSERT INTO publisher (publisher) VALUES ('Yen Press')")
# db.execute("INSERT INTO publisher (publisher) VALUES ('Tokyopop')")
# db.execute("INSERT INTO publisher (publisher) VALUES ('Dark Horse Manga')")

#add test manga
# db.execute("INSERT INTO manga (title, author, volume, complete, publisher_id) VALUES ('Demon Diary', 'Kara', 1, 'true', 3)")

