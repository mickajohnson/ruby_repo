require_relative "human"
class Wizard < Human
  def initialize
    super
    @health = 50
    @intelligence = 25
  end

  def heal
    @health += 10
  end

  def fireball target
    target.health -= 20 if target.class.ancestors.include? "Human"
  end
end
