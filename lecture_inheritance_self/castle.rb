require_relative 'building'

class Castle < Building
  attr_accessor :butler
  def initialize(name, width, length, ruler)
    super(name, width, length)
    @ruler = ruler
    @butler = Butler.new(self)
  end

  def self.categories
    return ['Medieval', 'Norman', 'Ancient']
  end

  def has_a_butler?
    @butler != nil
  end

  #overriding the floor_method by adding 300m
  def floor_area
    super
  end

end

my_castle = Castle.new('Big Castle', 400, 350)
p my_castle.name
puts "Does the castle have a butler?"
p my_castle.has_a_butler?

p Castle.categories
