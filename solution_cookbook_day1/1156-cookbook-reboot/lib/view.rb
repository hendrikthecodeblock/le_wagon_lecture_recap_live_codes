class View
  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_name
    puts "What is the name of the recipe?"
    gets.chomp
  end

  def ask_description
    puts "What is the description of the recipe?"
    gets.chomp
  end

  def ask_for_index
    puts "Which number do you want to delete?"
    gets.chomp.to_i - 1
  end
end
