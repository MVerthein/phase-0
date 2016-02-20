# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create an inital gorcery list (hash)
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: created hash with the key and value set to default, and key broken apart string
# init_string = "carrots apples cereal pizza"
# grocery_array = init_string.split

# groceries = Hash[grocery_array.map {|x| [x, quantity = 1]}]


# # def make_list(item, quantity = 1)
# #   groceries = { item => quantity }
# #   return groceries
# # end


# # p list


# # Method to add an item to a list
# # input: item name and optional quantity to the list (groceries)
# # steps: add new items and quantity if needed
# # output: new hash with added items (key) and quantity

# def add_to_list(groceries, item, quantity = 1)
#   groceries.store(item, quantity)
# end
# add_to_list(groceries, "orange", 4)
# p groceries

# # Method to remove an item from the list
# # input: original groceries hash
# # steps: remove an item from the list
# # output: the hash/list with item removed from the list
# def remove_from_list(groceries, item, quantity = 1)
#   groceries.delete(item)
#  end
# remove_from_list(groceries, "orange")
# p groceries

# # Method to update the quantity of an item
# # input: the original grocery hash
# # steps: change the quantity of a given item
# # output: same item with new quantity
# def add_quantity(groceries, item, new_q)
#   groceries.each do |k,v|
#     if k == item
#       groceries[k] = new_q
#     end
#   end
# end
# add_quantity(groceries, "apples", 2)
# p groceries
# # Method to print a list and make it look pretty
# # input: the groceries hash
# # steps: create a good sounding list for the hash to appear
# # output: A list of items and number of each item needed.
# def print_list (groceries)
#   groceries.each {|item, new_q| puts "You need to buy #{new_q} #{item}"}
# end
# p print_list(groceries)

# init_string = "carrots apples cereal pizza"
# grocery_array = init_string.split

#Refactored Solution

groceries = Hash.new


def add_to_list(groceries, item, quantity = 1)
  groceries.store(item, quantity)
end

def remove_from_list(groceries, item, quantity = 1)
  groceries.delete(item)
end


def add_quantity(groceries, item, new_q)
  groceries.each do |k,v|
    if k == item
      groceries[k] = new_q
    end
  end
end

def print_list (groceries)
  groceries.each {|item, new_q| puts "You need to buy #{new_q} #{item}"}
end


add_to_list(groceries, "Lemonade", 2)
add_to_list(groceries, "Tomatoes", 3)
add_to_list(groceries, "Onions")
add_to_list(groceries, "Ice Cream", 4)
p groceries

remove_from_list(groceries, "Lemonade")
p groceries

add_quantity(groceries, "Ice Cream", 1)
p groceries

print_list(groceries)
p groceries

#Reflection
=begin
What did you learn about pseudocode from working on this challenge?
  - Pseudocode is very imporant and makes the resy of your code easier to build with a strong pseudocode, even when each section is short.
What are the tradeoffs of using Arrays and Hashes for this challenge?
  - In this challenge, we mainly used hashes to build our list, it allows for use to easily pick keys and change values when needed.
What does a method return?
  - A methond returns either a value that is implecitly returned, or the last stated definition.
What kind of things can you pass into methods as arguments?
  - There are a number of different things you can pass into methonds as arugments, such as strings, integers, other methods or hashes.
How can you pass information between methods?
  - You can use a method as an argument in another method to pass information across.
What concepts were solidified in this challenge, and what concepts are still confusing?
  - Being able to make a new hash, and put it as an argument in each of our methods solidified the idea of having multiple arguments attached to a method to reference the hash in each method.
=end