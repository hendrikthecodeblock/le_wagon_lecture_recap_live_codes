#superclass/parent class building
#children/subclasses
class Building
  attr_reader :name, :width, :length
  def initialize(name, width, length)
    #properties
    @name = name
    @width = width
    @length = length
  end

  def width #reader/getter method
    @width * @length
  end
end
