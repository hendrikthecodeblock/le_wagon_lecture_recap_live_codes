class View
  def display_list(recipe)
    recipe.each_with_index do |rec, index|
      puts "#{index + 1}. #{rec.name} - #{rec.description}"
    end
  end

  def recipe_name
    puts "Enter the name of your recipe."
    gets.chomp
  end

  def recipe_description
    puts "Enter a description for your recipe."
    gets.chomp
  end

  def index_to_delete_recipe
    puts "Enter the number of the recipe you want to delete."
    gets.chomp.to_i - 1
  end
end
