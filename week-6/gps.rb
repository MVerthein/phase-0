# Your Names
# 1)Mike Verthein
# 2)Brittney Braxton

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

    raise ArgumentError.new("#{item_to_make} is not a valid input") unless library[item_to_make]


  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
      "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
     "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients} cookies!"
  end
end
p serving_size_calc("pie", 13)
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
# => It is actually difficult making code readable when the code presented is not mine. While reading through the code presented we could make sense of the code, however ugly it was.
# Did you learn any new methods? What did you learn about them?
# => I personally did not learn any new methods, however did re-enforce methods previously learned.
# What did you learn about accessing data in hashes?
# => You can access data in a few different ways. If you want to access the key of the library in this example you can the key data using [].
# What concepts were solidified when working through this challenge?
# => Raising ArgumentError, and accessing hash data.