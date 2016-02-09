# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expected keyword_end
# 5. Where is the error in the code?
# The actual error is after the first end in line 16, however ruby shows the error at the end of line 170
# 6. Why did the interpreter give you this error?
# In the code above we need a second end to close the loop.

# --- error -------------------------------------------------------

#south_park = "show"

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method 'south_park for main:object' (NameError)
# 4. Where is the error in the code?
# The south_park is undefined by anything such as a variable
# 5. Why did the interpreter give you this error?
# A variable has to be created to define south_park as a "show"

# --- error -------------------------------------------------------

#def cartman ()
#end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# in '<main>'
# 3. What additional information does the interpreter provide about this type of error?
# undefined method 'cartman' for main:object (NoMethodError)
# 4. Where is the error in the code?
# The error in this code is before cartman, the method cartman is not defined in this code.
# 5. Why did the interpreter give you this error?
# cartman () needs to be defined before ruby can interpret cartman

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#puts cartmans_phrase


# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# in 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0) (ArgumentError) from errors.rb:71:in `<main>'
# 4. Where is the error in the code?
# The error is in linke 71 where there is an argument placed that does not need to be placed for the function.
# 5. Why did the interpreter give you this error?
# We got the error because the interpretor expected 0 arguments, but was given 1 argument.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says("You are the worst")

# 1. What is the line number where the error occurs?
# 87
# 2. What is the type of error message?
# in 'cartman_says'
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1) (ArgumentError) from errors.rb:91:in '<main>'
# 4. Where is the error in the code?
# In line 91 when we are calling cartman_says we call the function without an argument when an argument was defined in the function.
# 5. Why did the interpreter give you this error?
# There were 0 arguments given when there should be 1



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# 108, 112
# 2. What is the type of error message?
# in 'catmans_lie'
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2) (ArgumentError) from errors.rb:112:in `<main>'
# 4. Where is the error in the code?
# The error occurs in line 112 when calling cartmans_lie, there are only 1 arguments given when there should be 2, (lie, name)
# 5. Why did the interpreter give you this error?
# The interpreter was expecting 2 arguments given when call cartmans_lie, and only 1 was given.

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 127
# 2. What is the type of error message?
# in `*'
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum (TypeError)
# 4. Where is the error in the code?
# The error is where 5 is before the string give.
# 5. Why did the interpreter give you this error?
# We are trying to add a string to a number, which we cannot do. If we wanted to have "Respect my authoritay!" repeated 5 times, we would have the * 5 after the string.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0.0


# 1. What is the line number where the error occurs?
# 142
# 2. What is the type of error message?
# in `/': divided by 0 (ZeroDivisionError) from errors.rb:142:in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# It is a zero division error.
# 4. Where is the error in the code?
# At the 0
# 5. Why did the interpreter give you this error?
# When you attempt to divide an integer by zero ruby gives the error. If you change the integer into a float (0.0) we will not get the error. Changes to Infinity

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 158
# 2. What is the type of error message?
# in `require_relative': cannot load such file -- /Users/MVerthein/DBC/phase-0/cartmans_essay.md (LoadError)
# 3. What additional information does the interpreter provide about this type of error?
# Load Error
# 4. Where is the error in the code?
# In the file name/location
# 5. Why did the interpreter give you this error?
# There is no local file by the name of "cartmans_essay.md" so it cannot load a file that does not exsist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
#   The first error message was the most difficult to read, for two reasons. First, it was the first error message that I was looking at to debug this error file. So figuring out what each message ment took a minute to work through it. Second, the line that was effected was the last line, which did throw me for a minute or so.
# How did you figure out what the issues with the error was?
#   Looking through the error code it did state unexpected end-of-input, expecting keyword_end, which did clue me in that there should be an 'end' to the code in the first example. Which led me to realizing there ends to be an 'end' to the loop.
# Were you able to determine why each error message happened based on the code?
#   I did have a minor set back with the String can't be coerced into Fixnum (TypeError) message. Where I had to quick re-read a second from Chris Pine's book about adding a string to a number which cannot be done.
# When you encounter errors in your future code, what process will you follow to help you debug?
#    The process given through this challenge will help me throughout all my future code. Looking at the file, line, and the interpreter information can give me aid to point to the issues in my code to debug.