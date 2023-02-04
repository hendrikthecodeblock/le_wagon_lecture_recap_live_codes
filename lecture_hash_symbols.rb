students = ["Peter", "Mary", "George", "Emma"]
student_ages = [24, 25, 22, 20]

# Pete is 24, Mary is 25 etc

# students.each_with_index do |student, index|
#   p "#{student} is #{student_ages[index]} years old"
# end

#CRUD

# Read
# Use index number to read from the array
# p students[0]

#Create
# students << "Jenny"
# p students

#Update
# p students[2] = "Mihir"

#Delete
# students.delete_at(1)
# p students

# Hashes

# paris = {
#   "country" => "France",
#   # Key  hash rocket value
#   "monument" => "Eifel Tower",
#   "population" => 10,

# }

# Read
# p paris["country"]

# Create
# paris["language"] = "english"

# # Update
# paris["monument"] = "Big Ben"

# Delete
# paris.delete("country")

#each method with hash

# paris.each do |key, value|
#   p "paris #{key} is #{value}"
#   p value
# end

# Is there a monument key inside of my Paris hash

#Iterate through parish hash
#Do any of keys == monument ? return true

#  key_present = false

#  paris.each do |key, value|
#   key == "monument" ? key_present = true : -1
#  end

#  p paris.key?("country")
#  puts key_present

#  p paris.keys

#  cities = [ ["London", "England", "Big Ben"], ["Paris", "France", "Tour Eiffel"] ]

# p cities[1][2]  #=> "Tour Eiffel"

# cities = {
#   "london" => {
#     "country" => "England",
#     "monument" => "Big Ben",
#     "friends" => ["Tom", "Seb"]
#   },
#   "Paris" => {
#     "country" => "France",
#     "monument" => "Tour Eiffel"
#   }
# }

#Symbols : replaces string "country" or "population"
#ensure when accessing key it gets change to :key_name

# paris = {
#   country: "Paris",
#   population: 10
# }

# p cities["Paris"]["monument"]

# cities["london"]["friends"].each do |friend|
#   p "I like my friend #{friend}"
# end

# p paris[:country]

#hash as last method argument

# def tag(name, content)
#   p "<#{name}>#{content}</#{name}>"
# end

#V1

# def tag(name, content, attr = {})
  #initialize an array
  #iterate over the final argument from the method call
  #make a string where the key = 'value
  #Put them inside an array
  #joing them all up
  #interpolate inside of the tag


#   tags_list = []
#   attr.each do |key, value|
#     key_value_string = " #{key}=\"#{value}\""
#     tags_list << key_value_string
#   end
#   joint_tags = tags_list.join
#   "<#{name}#{joint_tags}>#{content}</#{name}>"
# end

#v2

def tag(name, content, attr = {})
  tags_list = attr.map { |key, value| " #{key}=\"#{value}\""}.join
  "<#{name} #{tags_list}>#{content}</#{name}>"
end

# tag("h1", "Hello world")
# => <h1>Hello world</h1>

html_tag = tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>

puts html_tag
