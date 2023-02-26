class Repository
  def initialize
    @tasks = []
  end

  # CRUD methods (create, read, update, destroy)

  def create(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end
