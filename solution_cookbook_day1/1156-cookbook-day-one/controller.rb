require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def add
    # ask the user what is the name of the task
    name = @view.ask_user_for_name
    # create a task with given name
    task = Task.new(name)
    # store it to the repository
    @repository.create(task)
  end

  def list
    # grab all tasks
    tasks = @repository.all
    # display all tasks
    @view.display_tasks(tasks)
  end

  def mark_as_done
    # display the options
    list
    # ask the user for the index
    index = @view.ask_user_for_index
    # grab the task with chosen index
    task = @repository.find(index)
    # mark that task
    task.mark_as_done!
  end

  def remove
    # display the options
    list
    # ask the user for the index
    index = @view.ask_user_for_index
    # remove it from the repository
    @repository.destroy(index)
  end
end
