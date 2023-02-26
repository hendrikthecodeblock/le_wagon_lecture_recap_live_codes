require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # grab all the recipes
    recipes = @cookbook.all
    # display the list of recipes
    @view.display_list(recipes)
  end

  def add
    # ask the user the name
    name = @view.ask_name
    # ask the user the description
    description = @view.ask_description
    # create a new recipe with given info
    recipe = Recipe.new(name, description)
    # store the recipe to cookbook
    @cookbook.create(recipe)
  end

  def remove
    # display the recipes
    list
    # ask the user which recipe to delete (by index)
    index = @view.ask_for_index
    # destroy the recipe from the cookbook
    @cookbook.destroy(index)
  end
end
