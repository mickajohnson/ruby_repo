# def test
#   yield(5)
#   puts "You're in the method"
#   yield(100)
# end
# test {|i| puts "You're in the block #{i}"}

def square(num)
  puts "num is #{num}"
  puts "yield(num) is #{yield(num)}"
end

square(4) {|i| i*i}
