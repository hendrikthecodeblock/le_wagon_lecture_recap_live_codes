def sum_with_while(min, max)
  #   # CONSTRAINT: you should use a while..end structure
    num_arr = (min..max).to_a

    if min > max
      return -1

    else
      sum_of_num = 0
      i = 0
      while i < num_arr.length
        sum_of_num += num_arr[i]
        i+=1

      end

    end
  return  sum_of_num
end


p sum_with_while(1, 5)
