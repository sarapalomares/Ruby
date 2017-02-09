class Mammal
  def initialize
    puts 'I am alive!'
  end
  def breathe
    puts 'Inhale and exhale'
  end
end

class Cat < Mammal
  def jerk
    puts 'scratching you...'
    return self #allows chaining
  end
  def speak
    puts "Meow"
    return self #allows chaining
  end
  def who_am_i
    puts self
    return self #allows chaining
  end
end
chloe = Cat.new
chloe.who_am_i #prints the cat object
chloe.speak.who_am_i.jerk
