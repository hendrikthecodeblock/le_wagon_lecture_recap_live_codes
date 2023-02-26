class Cat
  def initialize(name, color)
    @color = color
    @name = name
  end
  def dye(new_color)
    @color = new_color
  end

  def self.branch
    'Mammals'
  end
end

# felix = Cat.new('felix', 'black')
# p felix

# garfield = Cat.new('garfield', 'orange')
# p garfield

# garfield.dye('green')
# p garfield

p Cat.branch
