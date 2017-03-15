require "sqlite3"

# Open a database
db = SQLite3::Database.new "students.db"

db.execute <<-SQL
	create table students (
		name varchar(50),
		email varchar(50),
		grade varchar(5),
		blog varchar(50)
	);
SQL

# Execute inserts with parameter markers
db.execute("INSERT INTO students (name, email, grade, blog)
						VALUES (?, ?, ?, ?)", ["Jane", "me@janedoe.com", "A", "http://blog.janedoe.com"])

db.execute( "select * from students" ) do |row|
	p row
end

class Student

	# Instance objects should have name, email, grade, and blog attribute
	# They should be readable AND writable

	def save # any changes applied to this instance should be saved to the DB
	end

	# `self.method_name` signifies a class method (not instance method)
	def self.find # ...
		# Search for 1 student by what is passed
		# If number passed, find one by id

		# return new Student instance
	end

	def self.where # ...
		# Search for all by query

		# return array of Student instances
	end

end
Student.find 24  # Returns Student with id 24

s = Student.new name: "Joe", blog: "Whateves"  #...
s.save

puts s.name
s.name = "Something Else"
s.save
