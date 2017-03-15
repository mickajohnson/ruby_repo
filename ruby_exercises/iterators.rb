a = ["ant", "bear", "cat"]
range = (4..9)

puts a.any? { |word| word.length == 3 }
a.each {|word| puts word.upcase}
puts (1..5).collect {|i| i + 1}.to_s
puts (1..100).detect { |i| i > 10}
puts (1..71).find_all {|i| i % 7 == 0}.to_s
puts (1..20).reject {|i| i % 5 == 0}.to_s
6.upto(10) {|i| puts "%d is a great number" % i}
puts range.include?(9)
puts range.include?(10)
puts range.last
puts range.max
puts range.min
