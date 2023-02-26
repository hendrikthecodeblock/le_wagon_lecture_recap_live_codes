# class Task
#   attr_reader :title, :completed
#   def initialize(title)
#     @title = title
#     @completed = false
#   end

#   def mark_as_completed
#     @completed = true
#   end

#   def completed?
#     @completed
#   end


# end

class Task
  attr_reader :name
  def initialize(name)
    @name = name
    @done = false
  end

  def mark_as_done!
    @done = true
  end

  def done?
    @done
  end

end
