# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: Kevin F. ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# Define 'assert' method
# Raising argument unless yeild
# Variables assigned below

# 3. Copy your selected challenge here

def shortest_string(list_of_words)
  if list_of_words.empty? == true
    return nil
  end
  small = list_of_words[0]
  list_of_words.each do |x|
    if x.length < small.length
      small = x
    end
  end
  return small
end



# 4. Convert your driver test code from that challenge into Assert Statements

# require_relative "my_solution"

# describe 'shortest_string' do
#   it "returns nil when the array is empty ([])" do
#     expect(shortest_string([])).to be_nil
#   end

#   it "returns '' when that is the only element in the array" do
#     expect(shortest_string([''])).to eq ''
#   end

#   it "returns 'cat' when that is the only element in the array" do
#     expect(shortest_string(['cat'])).to eq 'cat'
#   end

#   it "returns 'cat' with the example array" do
#     expect(shortest_string(['cat', 'zzzzzzz', 'apples'])).to eq 'cat'
#   end

#   it "returns the shortest string regardless of ordering" do
#     # This creates an array containing ['a', 'aa', ...]
#     # up to 10 characters long, but randomly ordered
#     array = Array.new(10) { |i| 'a' * (i + 1) }.shuffle

#     expect(shortest_string(array)).to eq 'a'
#   end
# end

def assert
  raise "Argument error" unless yield
end

assert { p shortest_string([]) == nil }
assert { p shortest_string(['']) == '' }
assert { p shortest_string(['cat']) == 'cat' }
assert { p shortest_string(['cat', 'zzzzzzz', 'apples']) == 'cat' }
assert { array = Array.new(10) { |i| 'a' * (i + 1) }.shuffle
         p shortest_string(array) == 'a'}




# 5. Reflection
# What concepts did you review in this challenge?
# => Reviewed assert in general and what and how to use assert in this manner.
# What is still confusing to you about Ruby?
# => While concepts I have learned and look at, make sense, going from a black page takes a while to settle.
# What are you going to study to get more prepared for Phase 1?
# => Ruby classes, attr_reader/writer/accessor, more classes, and I do need a major refreasher on html/css/js.