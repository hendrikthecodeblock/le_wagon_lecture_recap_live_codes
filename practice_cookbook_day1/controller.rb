require_relative "cookbook"
require_relative "view"
require_relative "recipe"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display_list(recipes)
  end

  def add
    name = @view.recipe_name
    description = @view.recipe_description
    recipe = Recipe.new(name, description)
    @cookbook.create(recipe)
  end

  def remove
    list
    index = @view.index_to_delete_recipe
    @cookbook.destroy(index)
  end
end
