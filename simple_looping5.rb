def sum_with_for(min, max)
  #CONSTRAINT: you should use a for..end structure
  #compute sum of integers
  range_of_numbers = (min..max).to_a
  sum_of_num = 0
  if min > max
   return -1
  else
    for num in range_of_numbers
      sum_of_num += num
    end
    return sum_of_num
  end
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  return -1 if min > max

  sum_of_num = 0
  while min <= max
    sum_of_num += min
    min++




  end

return sum_of_num

end



p sum_with_for(1, 5)
p sum_with_while(1, 5)
