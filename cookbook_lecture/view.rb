# class View
#   def ask_user_for_title
#     puts 'What do you want to do?'
#     gets.chomp
#   end
#   def list_tasks(tasks)
#     tasks.each_with_index do |task, index|
#       x = task.completed ? 'X' : ' '
#       puts "#{index + 1} - [#{x}]#{task.title}"
#     end
#   end

#   def ask_for_task_index
#     puts 'What is the index of the completed task?'
#     gets.chomp.to_i - 1
#   end
# end

class View

  def ask_user_for_name
    puts 'Add your task'
    gets.chomp
  end

  def display_tasks(tasks)
    tasks.each_with_index do |task|
      status = task.done? ? '[X]' : '[ ]'
      puts "#{index + 1}. #{status} #{task.name}"
    end
  end

  def ask_user_for_index
    puts 'Choose a number to mark'
    get.chomp.to_i - 1
  end
end
