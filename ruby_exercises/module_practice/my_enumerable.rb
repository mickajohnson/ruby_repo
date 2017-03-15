module MyEnumerable
  def my_each
    for element in 0...self.length
      yield(self[element])
    end
  end
end
class Array
  include MyEnumerable
end

[1,2,3,6].my_each { |i| puts i }
[1,2,3,6].my_each { |i| puts i * 10 }
