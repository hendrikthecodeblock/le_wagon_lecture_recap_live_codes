class Router
  def initialize(controller)
    @controller = controller
  end
  def run
    loop do
      puts 'Welcome to Task Manager?'
      puts '1 - List all tasks'
      puts '2 - Add a task'
      puts '3 - Marks as complete'
      puts '4 - Remove a task'
      puts 'Choose a number:'
      choice = gets.chomp.to_i

      if choice == 1
        @controller.add_task
      elsif choice  == 2
        @controller.list
      elsif choice == 3
        @controller.mark_task_as_complete
      elsif choice == 4
        @controller.remove
      else
        puts 'Wrong input. Try again.'
      end
    end
  end
end
