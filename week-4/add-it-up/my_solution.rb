# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [Afaan Naqvi].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: values
# Output: sum of all values
# Steps to solve the problem.


# 1. total initial solution

def total(array)
    sum = 0
    for i in array do
        sum = i + sum
    end
    return sum
end

# 3. total refactored solution

def total(array) array.reduce(:+) end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: series of strings
# Output: full sentence
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(array)
    sentence = ""
    count = 0
    while count < (array.length-1) do
        sentence = sentence + array[count].to_s + " "
        count += 1
    end
    sentence = sentence + array[-1]
    sentence = sentence + "."
    sentence[0] = sentence[0].capitalize
    return sentence
end

# 6. sentence_maker refactored solution

def sentence_maker(array)
    sentence = array.join(" ") + "."
    sentence[0] = sentence[0].capitalize
    return sentence
end
