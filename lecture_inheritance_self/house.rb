require_relative 'building'
class House < Building
end

my_house = House.new('blue house', 50, 45)
p my_house.name
p my_house.width
