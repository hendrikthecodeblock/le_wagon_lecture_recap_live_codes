# print a greeting message
puts 'Welcome to your Christmas Gift List'
# Display the actions available (list, add, delete, quit)
# Initialize with an empty string
action = ''
gift_list = [
  # The gifts will have a name and a price
  {
    name: 'Laptop',
    price: 550
  },
  {
    name: 'Doll',
    price: 30
  }
]
# Loop: while / until
# Until: breaks when value is true
# While: loops when value is true
# we exit the loop when the action 'quit' is entered by the user
until action == 'quit'
  puts 'Which action [list|add|delete|quit]'
  # Get the action that the user wants
  action = gets.chomp.downcase
  # Perform the action that the user selected

  # if/else statement checking user action input
  # if action == 'list'
  #   # List
  #   puts 'TODO: list items'
  #   # display 'TODO: list items'
  # elsif action == 'add'
  #   # Add
  #   puts 'TODO: ask user an item and add it to gift list'
  #   # display 'TODO: ask user an item and add it to gift list'
  # elsif action == 'delete'
  #   # Delete
  #   puts 'TODO: ask user the index of the item to delete and delete it'
  #   # display 'TODO: ask user the index of the item to delete and delete it'
  # elsif action == 'quit'
  #   # Quit
  #   # display 'Goodbye' and we exit the loop
  #   puts 'Goodbye'
  # else
  #   # If the user entered a wrong input
  #   puts 'Wrong input by the user'
  # end

  # Using the case method
  case action
  when 'list'
    # We take the array of hashes
    gift_list.each_with_index do |gift, index|
      puts "#{index + 1} - #{gift[:name]} - $#{gift[:price]}"
    end
  when 'add'
    puts 'TODO: ask user an item and add it to gift list'
    # Ask the user gift name
    # get the user value for the name
    # Ask the user gift price
    # get the user value for the price

    # Store it in a gift variable (Create a gift)
    # Add it to the gift list
  when 'delete'
    puts 'TODO: ask user the index of the item to delete and delete it'
    # Display the items available
    # Ask user for the index of which gift he wants to delete.
    # We delete the gift from the gift list
  when 'quit'
    puts 'Goodbye'
  else
    puts 'Wrong input by the user'
  end
end
