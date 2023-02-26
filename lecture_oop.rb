require "pry-byebug"

# def capitalize(first_name, last_name)
#    first = first_name.capitalize
#   last = last_name.capitalize
#   binding.pry
#   "#{first} #{last}"
# end

# binding.pry
# puts capitalize('andre', 'ferer')

#class Car
#   attr_reader :brand
#   attr_accessor :color
  #above combines attr_writer and attr_reader
  #constructor method
  # def initialize(color)
    #instance variables
  #   @color = color
  #   @engine_started = false
  #   @brand = 'BMW'
  # end

  # def color
  #   @color
  # end
  #same as above


  # def color=(new_color)
  #   @color = new_color
  # end

  # def start_engine
  #   @engine_started = true
  # end

  # def is_engine_started?
  #   @engine_started
  # end

# end
#filename lower_snake_case
#ClassName upperCamelCase

class Car
attr_reader :brand
# attr_writer :color
attr_accessor :color
  def initialize(color, brand)
    @color = color
    @brand = brand
    @engine_started = false
  end
  def is_engine_started?
    @engine_started
  end
  def start_engine
    start_fuel_pump
    @engine_started = true
  end
  # def color=(new_color)
  #   @color = new_color
  # end
  # def color
  #   @color
  # end

  private
  def start_fuel_pump
    puts "starting fuel pump"
    sleep(1)
  end

end

my_car = Car.new('red', 'BMW')

puts my_car.brand
puts my_car.color
my_car.color=('black')
puts my_car.color

puts my_car.is_engine_started?
my_car.start_engine
puts my_car.is_engine_started?
my_car.start_engine
