def list(gifts)
  gifts.each_with_index do |gift, index|
    if gift[:bought]
      puts "[X] -#{index + 1} - #{gift[:name]} - $#{gift[:price]}"
    else
      puts "[ ] -#{index + 1} - #{gift[:name]} - $#{gift[:price]}"
    end
  end
end

def scrape_etsy(query)
  # Forge the url

  # Open the url using open-uri

  # convert the response to a Nokogiri document

  # Search in the doc for the gifts' names and price

  # Create an array and store our ideas from etsy

  # return the array
end
