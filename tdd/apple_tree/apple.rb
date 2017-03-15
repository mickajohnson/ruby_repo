class Tree
  attr_accessor :age
  attr_reader :height, :count
  def initialize age=0
    @age = age
    @count = 0
    @height = 10
  end
  def year_gone_by
    @age += 1
    @height += (@height * 0.1)
    @count += 2 if age.between?(4, 10)
    self
  end
  def pick_apples
    @count = 0
  end

end

tree = Tree.new 4
tree.year_gone_by.year_gone_by
puts tree.count
