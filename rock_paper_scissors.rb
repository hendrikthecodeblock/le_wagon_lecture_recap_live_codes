# we set the values for rock paper scissors
hands = ['rock', 'paper', 'scissors']

# we initialize the answer to enter the loop
answer = 'y'

# We continue as long as the user says yes
while answer == 'y'
  # we give a hand to the computer
  computer_hand = hands.sample
  # We ask the user to pick a hand

  # puts computer_hand

  puts "Please choose your hand(rock, paper or scissors):"
  print '>'
  user_hand = gets.chomp

  # Compare the hands
  # A draw happens when both hands are equal
  if user_hand == computer_hand
    puts "It's a draw!!"
  elsif computer_hand == 'rock'
    # check if the computer hand is rock
    # user wins if his choice is paper

    # # Long if else statement
    # if user_hand == 'paper'
    #   puts 'You won'
    # else
    #   puts 'You lost'
    # end

    # # Ternary statement
    puts user_hand == 'paper' ? 'You win' : 'You lose'
  elsif computer_hand == 'paper'
    # check if the computer hand is paper
    # user wins if his choice is scissors
    puts user_hand == 'scissors' ? 'You win' : 'You lose'
  elsif computer_hand == 'scissors'
    # check if the computer hand is scissors
    # user wins if his choice is rock
    puts user_hand == 'rock' ? 'You win' : 'You lose'
  end

  puts 'Do you wish to continue?(y/n)'
  print '>'
  answer = gets.chomp
end

puts 'Thank you and come again :)'
