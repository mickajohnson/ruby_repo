require_relative "human"
class Samurai < Human
  @@number_samurai = 0
  def initialize
    super
    @health = 200
    @@number_samurai += 1
  end

  def death_blow(target)
    target.health = 0 if target.class.ancestors.include?(Human)
    self
  end

  def meditate
    @health = 200
    self
  end

  def how_many
    @@number_samurai
    self
  end
end

sam1 = Samurai.new
sam2 = Samurai.new
puts sam1.health
sam1.death_blow(sam2)
puts sam2.health
sam2.meditate
puts sam2.health
sam2.how_many
