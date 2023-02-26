require_relative 'building'

class Skyscraper < Building
  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

  def type_of_owner
    if @height > 50
      "this #{self.capitalized_name} is a skyscraper for Spider-Man."
    else
      "this #{self.capitalized_name} is a skyscraper for beginners"
    end
  end

  def capitalized_name
    @name.capitalize
  end
end

my_skyscraper = Skyscraper.new('Empire State Building', 300, 400, 1000)
p my_skyscraper.type_of_owner
