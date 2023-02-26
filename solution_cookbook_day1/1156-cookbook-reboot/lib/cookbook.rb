require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_file_path)
    @recipes = []
    @csv_file_path = csv_file_path

    CSV.foreach(csv_file_path) do |row|
      recipe = Recipe.new(row[0], row[1])
      @recipes << recipe
    end
  end

  # Create, Read, update, Destroy (CRUD actions)

  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
    save_csv
  end

  def destroy(recipe_index)
    @recipes.delete_at(recipe_index)
    save_csv
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end


# all which returns all the recipes
# create(recipe) which creates a recipe and adds it to the cookbook
# destroy(recipe_index) which removes a recipe from the cookbook.
