def acronomize(sentence)
  # Split the sentence into an array of words
  words = sentence.split
  # Initialize the variable
  first_letters = []

  words.each do |word|
    # Take the first letter of EACH word in the sentence
    # A string is like an array of characters
    # we push the letter inside a variable
    first_letters << word[0]
  end
  # we combine the letters and transform in uppercase
  first_letters.join.upcase
end


# lines of test
puts acronomize('') #
puts acronomize('') == '' # true or false
p acronomize('kentucky fried chicken') # KFC
puts acronomize('kentucky fried chicken') == 'KFC' # true or false
puts acronomize('What would Jesus Do') # WWJD
puts acronomize('What would Jesus Do') == 'WWJD'
puts acronomize('United states America') # USA
puts acronomize('United states America') == 'USA'
puts acronomize('You only Live Once') # YOLO
puts acronomize('You only Live Once') == 'YOLO'
