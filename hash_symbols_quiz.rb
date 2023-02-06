# 1. What’s a variable? What’s the point of using variables? Give an example.
# ANSWER:
# what is a variable: 
A variable is a name which stores data.
# What’s the point of using variables?
The reason why we use it is to be able to reuse that data or manipulate that data.
# Give an example.
first_name = "fabrice"
first_name.capitalize #-> a method to manipulate the data inside the variable which returns "Fabrice"


# 2. Precisely describe the following line of code using the correct vocabulary.

age = 18

# ANSWER:

we are assigning/reassigning the value 18 to the variable age.

# 3. What’s a method? What’s the point of defining methods?

# ANSWER:
# What is a method?
A method is a name which refers to a set of program instructions in memory to store code.

# What is the point of defining methods?
The point of using methods is to be able to reuse and manipulate data or another piece of code.


# 4. Precisely describe what happens at each line using good vocabulary. 
# Write a ruby comment next to the line you’re explaining using the #.

# Code example given to the student:
def multiply(x, y) # Define the method multiply which is taking in as parameters 'x' and 'y'.
  return x * y     # We return/compute the product of 'x' multiplied by 'y'.
end                # Here we mark the end point of the method 'multiply'

puts multiply(5, 8) # we call the method multiply giving the arguments '5' and '8', 
                    # then we print out the result of the computation


# 5. What’s the keyword if ? Give us an example of if statements, using an age variable storing a student’s age for instance.

# Code example given to the student:
# TODO: write some code with `if`

# ANSWER:
# What's the keyword if?
if is a keyword used to evaluate a condition.(always used inside conditional statements)
# Give us an example of if statements, using an age variable storing a student’s age for instance
age = 30

if age >= 18
  puts "you can vote"
else
  puts "you cannot vote"
end


# 6. Complete the following code to compute the exact average of students grades (using each ).

# Code example given to the student:
grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`
# average = total_sum / total_number_of_elements
# 3 ways to get number of elements of array: array.length, array.size, array.count
# ANSWER:

total = 0

grades.each do |grade|
  total += grade
end

average = total / grades.length
average = total.fdiv(grades.length)


# 7. Define a capitalize_name method which takes first_name and last_name as parameters
#  and returns the well-formatted fullname (with capitalized first and last names).

# ANSWER:

# define the method capitalize_name
# give parameters 'first_name' and 'last_name'
def capitalize_name(first_name, last_name)
  # first_name.capitalize + " " + last_name.capitalize
  "#{first_name.capitalize} #{last_name.capitalize}" # -> Always favor interpolation instead of concatenation
end

# 8. What’s the difference between concatenation and interpolation? Give an example.
# ANSWER:
concatenation is the operation of creating a string by sticking together multiple strings.
  # first_name.capitalize + " " + last_name.capitalize

interpolation is the operation of creating a string by executing a piece of code inside this string.
  # "#{first_name.capitalize} #{last_name.capitalize}"
#  age >= 18 ? "can vote" : "cannot vote"
 "Hello student! you #{age >= 18 ? "can vote" : "cannot vote"}"
#  "Hello student! you can vote" <--- if the student is older than 18
#  "Hello student! you cannot vote" <--- if the student is younger than 18.

# 9. Translate each line of pseudo-code into ruby.

# Code example given to the student:
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
puts fruits[1]

# Add an "apple" to the fruits array
# fruits.push('apple')
fruits << "apple"

# Replace "watermelon" by "pear"
fruits[2] = "pear"

# Delete "orange"
fruits.delete('orange')
fruits.delete_at(-1)
fruits.pop

# 10. Translate each line of pseudo-code into ruby.

# Code example given to the student:
city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]  #--> this printout the name 'Paris'

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"

# Update the population to 2000001
city[:population] = 2000001

# What will the following code return?
city[:mayor]  #--> this will return 'nil'

# 11. Use the map iterator to convert the variable students, 
# an array of arrays, into an array of hashes.
# Those hashes should have two keys: :name and :age. 
# What is the type of those keys?

# Code example given to the student:
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

# TODO: Convert the array of arrays into an array of hashes.
new_students = students.map do |student|
  { name: student[0], age: student[1] }
end

p new_students

The keys above are symbols
