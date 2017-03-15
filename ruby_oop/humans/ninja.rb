require_relative "human"
class Ninja < Human
  def initialize
    super
    @stealth = 175
  end

  def steal(target)
    attack(target)
    @health += 10
    self
  end

  def get_away
    @health -= 15
    self
  end
end
