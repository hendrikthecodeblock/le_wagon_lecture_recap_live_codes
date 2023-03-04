require_relative 'controller'
require_relative 'cookbook'
require_relative 'router'

csv_file = "recipes.csv"
cookbook = Cookbook.new(csv_file)
controller = Controller.new(cookbook)

router = Router.new(controller)

router.run
