# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution Mike V.
def my_array_finding_method(source, thing_to_find)
new_array = []

source.each do |string|
  if string.is_a?(Integer) == true
    string.to_s

  elsif string.include?(thing_to_find) == true
    new_array << string
  end
end
  return new_array
end


def my_hash_finding_method(source, thing_to_find)
  new_array = []
  source.each { |key, value|
    if thing_to_find == value
      new_array.push(key)
    end }
  new_array
  end


# Identify and describe the Ruby method(s) you implemented.
#
# In the first method I first created a new empty array for the results to go into, I changed any integers that exist in the array and change them to a string.
# Next, I had the method check each string if it included the thing_to_find, and if that came true then it would push the string into the new array.
#
# In the second hash, I again created a new empty array, and went through each source pair, and had the thing to find equal to the value of the pair, being the age.
# IF that value was equal to the thing to find, then it pushed the key of that value into the new array.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#