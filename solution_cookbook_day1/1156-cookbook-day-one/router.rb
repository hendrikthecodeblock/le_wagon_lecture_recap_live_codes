class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts
      puts "WELCOME TO TASK MANAGER"
      puts "1 -- List all tasks"
      puts "2 -- Create a task"
      puts "3 -- Mark a task"
      puts "4 -- Remove a task"
      puts "Choose a number:"
      choice = gets.chomp.to_i

      if choice == 1
        @controller.list
      elsif choice == 2
        @controller.add
      elsif choice == 3
        @controller.mark_as_done
      elsif choice == 4
        @controller.remove
      else
        puts "Wrong input. Try again."
      end
      puts
    end
  end
end
