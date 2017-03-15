class Human
  attr_accessor :strength, :stealth, :intelligence, :health
  def initialize
    @strength = 3
    @stealth = 3
    @intelligence = 3
    @health = 100
  end
  def attack target
    target.health -= 10 if target.class.ancestors.include? Human
    self
  end
end
