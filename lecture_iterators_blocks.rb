# frozen_string_literal: true

# musicians = [
#   'David Gilmour',
#   'Roger Waters',
#   'Richard Wright',
#   'Nick Mason'
# ]

# CRUD

# Create

# musicians << 'Stevie Wonder'
# p musicians

# Read

# p musicians[4]

# Update

# musicians[4] = 'Stevie Nicks'
# p musicians

# Delete

# musicians.delete('Stevie Nicks') # Don't use will delete all instance of name
# musicians.delete_at(-1)

## Ranges

# range = (1..10)
# p range
# p range.to_a

# for num in range
#   puts num
# end

# musicians = [
#   'David Gilmour',
#   'Roger Waters',
#   'Richard Wright',
#   'Nick Mason',
#   'Stevie Wonder'
# ]

# for musician in 0...(musicians.length)
#   puts musicians[musician]
# end

# for musician in musicians
#   puts musician
# end

# musicians.each { |el| puts el }

# Greet musciians
# musicians.each do |musician|
#   puts "Hello #{musician}"
# end

# musicians.each_with_index do |musician, index|
# puts "#{index + 1} - #{musician}"
# end

# Returns a new array of upcased musicians

# upcased_musicians = musicians.map do |musician|
#   musician.upcase
# end

# p upcased_musicians

# Returns a new array of musician first names

# musicians_first_name = musicians.map do |musician|
#   musician.split.first
# end

# p musicians_first_name

# Count musicians starting with R

# musicians_count_with_r = musicians.count do |musician|
#   musician.start_with?("R")
# end

# p musicians_count_with_r

# Extract musicians starting with R

# musicians_arr_starting_with_r = musicians.select do |musician|
#   musician.start_with?('R')
# end

# p musicians_arr_starting_with_r

# musicians = [
#   'David Gilmour',
#   'Roger Waters',
#   'Richard Wright',
#   'Nick Mason'
# ]

# upcased_first_names = musicians.map do |musician|
#   first_name = musician.split.first
#   upcased_first_name = first_name.upcase
#   puts "[DEBUG] #{musician}'s first name is #{upcased_first_name}"

#   upcased_first_name
# end

# p upcased_first_names

# Custom timer method

# def timer
#   start_time = Time.now
#   yield #yield executes the block that is passed as an argument
#   end_time = Time.now
#   elapsed_time = end_time - start_time
#   puts "Elapsed time: #{elapsed_time} seconds"
# end

# timer do
#   puts "Doing a bit of work...."
#   sleep(2)
#   puts "I'm done now :)"
# end

# timer do
#   puts "Doing a lot of work...."
#   sleep(4)
#   puts "I'm done now :)"
# end

# Custome Greeting Message

def greeting(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  yield(full_name)
end

hello = greeting('john', 'lennon') do |first|
"Hello #{first}, you are looking quite fine today!"

end

hello_french = greeting('john', 'lennon') do |first|
  "Bonjour #{first}, comment allez-vous?"
end

puts hello
puts hello_french
