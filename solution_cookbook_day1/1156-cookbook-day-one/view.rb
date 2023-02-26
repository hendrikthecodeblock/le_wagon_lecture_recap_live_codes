class View
  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      status = task.done? ? "[X]" : "[ ]"
      puts "#{index + 1}. #{status} #{task.name}"
    end
  end

  def ask_user_for_name
    puts "What is the name?"
    gets.chomp
  end

  def ask_user_for_index
    puts 'Choose a number to mark'
    gets.chomp.to_i - 1
  end
end
