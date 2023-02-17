def list(gifts)
    gifts.each_with_index do |gift, index|
      puts "#{index + 1} - #{gift[:name]} - $#{gift[:price]}"
    end
end
