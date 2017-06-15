# require gems
require 'sinatra'
require 'sqlite3'

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

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

get '/campuses' do
  @students = db.execute("SELECT * FROM students WHERE campus=(?)", [params['campus']])
  erb :find_students
end

get '/request_info/new' do
  erb :request_info
end

get '/perspective_students' do
  @students = db.execute("SELECT * from perspective_students")
  erb :perspective_students
end

post '/request_info' do
  db.execute("CREATE TABLE IF NOT EXISTS perspective_students (id INTEGER PRIMARY KEY, name VARCHAR(225), email VARCHAR(225), campus VARCHAR(225))")
  db.execute("INSERT INTO perspective_students (name, email, campus) VALUES (?, ?, ?)", [params['name'], params['email'], params['campus']])
  redirect '/perspective_students'
end