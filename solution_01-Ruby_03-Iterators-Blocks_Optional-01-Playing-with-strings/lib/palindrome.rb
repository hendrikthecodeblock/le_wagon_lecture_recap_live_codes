def palindrome?(a_string)
  p just_letters = a_string.gsub(/[^a-zA-Z]/, "").downcase
  return false if just_letters.empty?

  just_letters == just_letters.reverse
end



p palindrome?("step on no pets!!!")
