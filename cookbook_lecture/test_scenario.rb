require_relative 'task'
require_relative 'repository'
require_relative 'controller'
require_relative 'view'
require_relative 'router'

# repository = Repository.new
# view = View.new1
# controller = Controller.new(view, repository)

# router = Router.new(controller)

# router.run

repository = Repository.new
controller = Controller.new(repository)
router = Router.new(controller)

router.run
