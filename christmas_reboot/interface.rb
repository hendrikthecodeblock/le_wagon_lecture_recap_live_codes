require_relative 'christmas'

# print a greeting message
puts 'Welcome to your Christmas Gift List'
# Display the actions available (list, add, delete, quit)
# Initialize with an empty string
action = ''
gift_list = [
  # The gifts will have a name and a price
  # Array of hashes (each gift is an individual hash)
  {
    name: 'Laptop',
    price: 550,
    # Add a new symbol which will contain the status of whether the item has been purchased or not
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
  puts 'Which action [list|add|delete|quit]' # add the mark option
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
    # gift_list.each_with_index do |gift, index|
    #   puts "#{index + 1} - #{gift[:name]} - $#{gift[:price]}"
    # end
    list(gift_list)
  when 'add'
    # Ask the user gift name
    puts 'Add a gift name'
    print '>'
    # get the user value for the name
    gift_name = gets.chomp
    # Ask the user gift price
    puts 'What is the price of the gift?'
    print '>'
    # get the user value for the price
    gift_price = gets.chomp.to_i

    # Store it in a gift variable (Create a gift)
    gift = {
      name: gift_name,
      price: gift_price
    }
    # Add it to the gift list (array)
    gift_list << gift
    # gift_list.push(gift)
  when 'delete'
    # Display the items available
    list(gift_list)
    # Ask user for the index of which gift he wants to delete.
    puts 'Which gift would you like to delete(Select Index):'
    print '>'
    user_index = gets.chomp.to_i - 1
    # p gift_list[user_index]
    # Pick the gift
    gift = gift_list[user_index]
    puts "#{gift[:name]} has been deleted in the list"
    # We delete the gift from the gift list
    gift_list.delete_at(user_index)
    puts 'Gift has been deleted'
  when 'quit'
    puts 'Goodbye'
  # Add the when mark case
    # display the gifts list
    # Ask the user which item to be marked as bought
    # Store it in a variable
    # mark the item selected by the user as bought
    # Display the gifts list again

  else
    puts 'Wrong input by the user'
  end
end
