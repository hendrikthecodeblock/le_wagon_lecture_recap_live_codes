#Write a method that returns the acronym of a sentce.
def acronomize(sentence)
  #Split the sentence into an array of words
  words = sentence.split
  first_letters = []
  words.each do |word|
    # Taeke the first letter of each word in the sentence
    # A string is like and array of characters
    #we push the letter inside a variable
    first_letters << word[0]

  end
  #combine
  first_letters.join.upcase

end




#lines of test
puts acronomize('')
puts acronomize('') == ''
p acronomize('kentucky fried chicken') #KFC
p acronomize('kentucky fried chicken') == 'KFC'
p acronomize('What would Jesus Do') # WWJD
p acronomize('What would Jesus Do') == 'WWJD'
p acronomize('You only live once')# YOLO
p acronomize('You only live once') == 'YOLO'
