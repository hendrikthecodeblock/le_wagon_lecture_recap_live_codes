class Router
  def initialize (controller)
    @controller = controller
    @running = true
  end

  def run
    puts "Welcome to the Cookbook!"
    puts "...........__..........."

    while @running
      display_tasks
      action = gets.chomp.to_i
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.add
    when 3 then @controller.remove
    when 4 then stop
    end
  end

  def display_tasks
    puts ""
    puts "Select the number for the action you want to run."
    puts "1 - List all recipes"
    puts "2 - Add a new recipe"
    puts "3 - Remove a recipe"
    puts "4 - Stop and exit the program"
  end

  def stop
    @running = false
  end

end
