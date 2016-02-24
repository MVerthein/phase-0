# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5}
  else
     element + 5
  end
end

puts number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |name|
  if name.kind_of?(Array)
    name.each do|inner|
      if inner.kind_of?(Array)
        inner.each {|inner2| p inner2 + "ly"}
      elsif inner.kind_of?(String)
        p inner + "ly"
      end
    end
  elsif name.kind_of?(String)
    p name + "ly"
  end
end

=begin
REFLECTION

What are some general rules you can apply to nested arrays?
  - Keep good track of your array indexes, can be easy to lose track.
What are some ways you can iterate over nested arrays?
  - The way we used was to iterate with .each element and used the kind_of?(Array) to move into inner elements of nested arrays.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  - When we moved to make our iteration of number_array destructive, we used the .map! method, which I have used in previous challenges. Simple destructive iteration that goes through each element. The method kind_of? is new to me, but made it easy to identify array classes and iterate inside nested arrays to modify.

=end