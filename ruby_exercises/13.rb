# 1
def print_255
  (1..255).each {|i| puts i}
end
# 2
def odd_255
  puts (1..255).find_all {|i| i % 2 == 1}
end
# 3
def sum_255
  sum = 0
  (1..255).each {|i| sum += i; puts "New Number: #{i} Sum: #{sum}"}
end
#4
def iter_arr(arr)
  arr.each {|i| puts i}
end
#5
def max_arr(arr)
  puts arr.max
end
#6
def average(arr)
  sum = 0
  arr.each {|i| sum += i}
  sum/arr.length.to_f
end
#7
def odd_arr
  y = (1..255).find_all {|i| i % 2 == 1}
  puts y.to_s
end
#8
def gt_y(arr, y)
  return arr.find_all {|i| i > y}.length
end
#9
def square(arr)
  arr.collect {|i| i*i}
end
#10
def elim_neg(arr)
  arr.each_index {|i| arr[i] = 0 if arr[i] < 0}
end
#11
def max_min_avg(arr)
  hash = {}
  hash["max"] = arr.max
  hash["min"] = arr.min
  sum = 0
  arr.each {|i| sum += i}
  hash["average"] = sum/arr.length
  return hash
end
#12
def shift(arr)
  arr.rotate(1)
  arr[-1] = 0
  return arr
end
puts shift([1,4,6,8]).to_s
#13
def dojo_neg(arr)
  arr.each_index {|i| arr[i] = "Dojo" if arr[i] < 0}
end
