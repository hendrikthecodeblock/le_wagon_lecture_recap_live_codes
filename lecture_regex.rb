# running = "yes"

# while running == "yes"
#   puts "Please tell me an email"
#   email = gets.chomp

#   if email.match?(/\w+@\w+\.\w{2,}/)
#     puts "it is an email"
#     running = "no"
#   else
#     # puts "it is not an email"
#   puts "input exit to quit or continue to continue"
#   input = gets.chomp
#   if input == "exit"
#   running = "no"
#     end

#   end

#   end

# name_pattern = /^([a-z]+) ([a-z]+)$/i

# puts "What is your name?"
# name = gets.chomp

# if name.match?(name_pattern)
#   match_data = name.match(name_pattern)
#   puts "Your first name is #{match_data[1]}"
#   puts "Your last name is #{match_data[2]}"


# end

p "a very good file   with a big name".gsub(/\s/, '_')
  "hello world".gsub(/(\w+)(\w+)/, "\2 \1")

  p "lets play tic tac toe".scan(/\bt../)
