# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#get all students on each campus
#need to make path longer than id path for some reason
get '/students/location/:campus' do
  campus = params[:campus]
  student = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  student.to_s
end

get '/contact' do
  "123 Address St., SF, CA 94111"
end

get'/great_job' do
  if name = params[:name] 
    "Good job, #{name}!"
  else
    "Good job!"        
  end
end

get '/:number_1/add/:number_2' do
  final = params[:number_1].to_i + params[:number_2].to_i
  final.to_s
end

get'/' do
  if name = params[:name]
    "Hello, #{name}!"     
  else
    "Hello you!"          
  end
end





