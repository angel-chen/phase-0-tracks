# require gems
require 'sinatra'
require 'sqlite3'
require 'sinatra/reloader' if development?

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/book_cost' do
	campus = params[:campuses]
	@campus_db = db.execute("SELECT * from campuses")

	if campus == params[:campuses]
	@students_search= db.execute("SELECT name, students.campus, campuses.book_cost FROM students LEFT OUTER JOIN campuses ON students.campus=campuses.campus WHERE campuses.campus='#{campus}'")
	else
		puts "Results will be displayed here."
	end
	erb :book_cost
end

get '/students/new_campus' do
	erb :new_campus
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# create new campuses via a form
post '/students/book_cost' do
	db.execute("INSERT INTO campuses (campus, location) VALUES (?,?)", [params['campus'], params['location']])
	redirect '/students/book_cost'
end



# add static resources