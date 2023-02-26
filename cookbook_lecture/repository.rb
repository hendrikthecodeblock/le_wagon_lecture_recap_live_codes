# class Repository
#   def initialize
#     @tasks = []
#   end

#   def add(task)
#     @tasks << task
#   end

#   def all
#     @tasks
#   end

#   def find(index)
#     @tasks[index]
#   end
# end

class Repository
  def initialize
    @tasks = []
  end

  #CRUD methods (create, read, update, delete)

  def create(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def destroy(index)
    @tasks.delete_at(index)
  end

  def find(index)
    @tasks[index]
  end
end
