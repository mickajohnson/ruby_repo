#1
def one
  arr = [3,5,1,2,7,9,8,13,25,32]
  puts arr.reduce(:+)
  return arr.reject {|i| i < 10}
end
#2
def two
  arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Cristopher"].shuffle.each {|i| puts i}
  return arr.reject {|i| i.length < 6}
end
# 3 - fix
def three
  arr = ('a'..'z').to_a.shuffle
  puts arr.last, arr.first
  puts "#{arr.first} - VOWEL ALERT" if ["a", "e", "i", "o", "u"].include? arr.first
end
# 4 - better way?
def four
  arr = []
  10.times { arr << rand(55..100) }
  return arr
end
# 5
def five
  arr = []
  (1..10).each {|i| arr << (55..100).to_a.sample }
  puts arr.sort!
  puts "Min: " + arr.min
  puts "Max: "+ arr.max
end
# 6
def six
  str = ""
  5.times {str << rand(65..90).chr}
  return str
end
# 7
def seven
  arr = []
  10.times do
    str = ""
    5.times {str << rand(65..90).chr}
    arr << str
  end
  return arr
end
puts seven.to_s
