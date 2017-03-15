a = ["Mick", "Matt", "Patrick", "Max"]
b = [5, 6 , 7, 10, 1]
c = ["c", "a", "t"]

puts a.to_s
puts a.at(-2)
puts a.delete("Max")
puts a.to_s
puts a.reverse.to_s
puts a.length
puts b.to_s
puts b.sort.to_s
puts b[1]
puts b[1..4].to_s
puts b[1, 4].to_s
puts b.shuffle.to_s
puts c.join
puts c.join(" - ")
puts c.insert(2, "r").join
