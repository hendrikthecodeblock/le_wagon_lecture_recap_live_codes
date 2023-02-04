def encrypt(text)
  #Define the letters of the alphabet
  alphabet = ('A'..'Z').to_a
  #alphabet[A, B, C, D, E]
  #Split letters of the text
  splitted_text = text.upcase.split('')
  splitted_text.map do |letter|
    #find the position of each letter in the alphabet
    index = alphabet.index(letter)
    #shift letters if the value are not nil
    index.nil? ? letter : alphabet[index - 3]
  end

  #select the letters
  #shift the letters

end

alpha = %w(a b c d e f)
p alpha
