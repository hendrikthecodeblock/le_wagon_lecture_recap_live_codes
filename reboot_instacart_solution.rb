# Pseudo code for the Insta-Cart
# Print a Welcome Message
puts 'Welcome to InstaCart 1156'
puts '--------------------------'

# Define the store: display what items are for sale?
store_hash = {
  'kiwi' => { price: 1.25, stock: rand(2..20) },
  'banana' => { price: 0.5, stock: rand(2..20) },
  'mango' => { price: 4, stock: rand(2..20) },
  'asparagus' => { price: 9, stock: rand(2..20) },
  'grapes' => { price: 3, stock: rand(2..20) },
  'pawpaw' => { price: 7, stock: rand(2..20) }
}

basket = Hash.new(0) # Initialized with a Hash and a new key will have a default value of zero 0

# Display the items with the price
store_hash.each do |item, info|
  puts "#{item}- $#{info[:price]} (#{info[:stock]} available)"
end
puts '--------------------------'

item = ''
total = 0

until item == 'quit'
  puts "Select an item you would like?(or 'quit' to checkout)"
  item = gets.chomp

  if store_hash.key?(item)
    # we take the item's price
    # We can ask the quantity
    puts "How many?"
    quantity = gets.chomp.to_i
    if store_hash[item][:stock] >= quantity
      basket[item] += quantity
      puts basket
      store_hash[item][:stock] -= quantity
    else
      puts "Sorry, there are only #{store_hash[item][:stock]} #{item} left"
    end
  elsif item != 'quit'
    puts 'you entered a wrong value'
  end
end

# We select the item we want OR we quit to checkout
# if the user enters an item that is not in our list:
# display an error message

# When user typed quit:
# At the checkout: print the receipt containing the total
puts "-------BILL---------"
basket.each do |item, quantity|
  item_total = quantity * store_hash[item][:price]
  total += item_total
  #  displaying each item, their quantity and subtotal
  puts "#{item}: #{quantity} x $#{store_hash[item][:price]} = $#{item_total}"
end
# Display the total
puts  "TOTAL: #{total}"
puts "--------------------"
