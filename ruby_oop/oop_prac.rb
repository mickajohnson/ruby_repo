class User
  @first_name
  def first_name=(name)
    @first_name = name
  end
  def first_name
    @first_name
  end
  attr_accessor :last_name
end

u = User.new
u.first_name = "Kobe"
u.last_name = "Johnson"
puts u.first_name
puts u.last_name

class New_User
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end
end

mick = New_User.new("Mick", "Johnson")
puts mick.first_name

class New_User
  def full_name
    puts "I am #{@first_name} #{@last_name}"
  end

  def say_hello
    puts "Hello!"
  end
end

mick.say_hello
mick.full_name
