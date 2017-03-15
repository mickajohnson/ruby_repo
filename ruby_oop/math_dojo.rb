class MathDojo
  def initialize
    @result = 0
  end
  attr_reader :result
  def add *adders
    @result += adders.flatten.reduce(:+).round(2)
    return self
  end
  def subtract *subbers
    @result -= subbers.flatten.reduce(:+).round(2)
    return self
  end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
puts challenge1
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
puts challenge2
