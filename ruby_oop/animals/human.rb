require_relative 'mammal'
class Human < Mammal
  def subclass_method
    breath
  end

  def another_method
    self.eat
  end

  def explicitily_speak
    self.speak
  end

  def implicitily_speak
    speak
  end

  def calling_cry
    cry
  end

  private
    def cry
      puts "Sniff sniff..."
    end
end

human = Human.new
human.another_method
