require_relative "view"
require_relative "view"

# class Controller
#   def initialize(view, repository)
#     @view = view
#     @repository = repository
#   end

#   def add_task
#     title = @view.ask_user_for_title
#     task = Task.new(title)
#     @repository.add(task)
#   end

#   def list_tasks
#     # 1. Ask repo for all tasks
#     tasks = @repository.all
#     # 2. Ask the view to print tasks
#     @view.list_tasks(tasks)

#   end

#   def mark_task_as_complete
#     # 1. Ask user for index of completed task
#     index = @view.ask_for_task_index
#     # 2. Ask repo for task instance at index
#     task = @repository.find(index)
#     # 3. Mark task instance as completed
#     task.mark_as_completed
#   end
# end

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def add_task
    # ask user what is the name of the task
    # create the task with the given name
    # store task to repository
    name = @view.ask_user_for_name
    task = Task.new(name)
    @repository.create(task)
  end

  def list
    # grab all the tasks from repository
    tasks = @repository.all
    # display all the tasks
    @view.display_tasks(tasks)
  end

  def mark_as_done
    #display the options
    list
    # ask user for the index
    index = @view.ask_user_for_index
    # grab the task with chosen index
    task = @repository.find(index)
    # mark that task
    task.mark_as_done!
  end

  def remove
    index = @view.ask_user_for_index
    @repository.destroy(index)
  end

end
