#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  def initialize
   @name = "Mike Verthein"
  end
end

class Greetings
  def initialize
    @NameData = NameData.new
  end

  def hello
    puts "Hello #{@NameData.name}, How goes your new schooling?"
  end

end
greet = Greetings.new
greet.hello


=begin
# Reflection
RELEASE 1

1. What are these methods doing?
  - The first method we are initialing the original profile class. The second method prints out the variables created in the first method. The rest of the methods are creating instance variables for the remaining characteristics.
2. How are they modifying or returning the value of instance variables?
  - They are calling a new instance of the class, then calling the methods of each characteristic to allow the user to write their own input.

  RELEASE 2
What changed between the last release and this release?
  - An attribute reader was created for the age variable.
What was replaced?
 - The method that defined @age was replaced.
Is this code simpler than the last?
  - It is simpler code, using only one line rather than three.

  RELEASE 3

What changed between the last release and this release?
  - We added the attrible writer to the instance variable age.
What was replaced?
  - The method that changed the age to a new age.
Is this code simpler than the last?
  - Again, more simple because we have eliminated the need for 3 more lines of code.

RELEASE 6
What is a reader method?
  - The attr_reader is the ability to read (not write) an instance variable outside of the its class.
What is a writer method?
  - The attr_writer is the ability to manipulate an instanced variable outside of the class it was created.
What do the attr methods do for you?
  - The methods tell me at the beginning of the class what instance variables will be included in the rest of the code, and weather they can just be read, modified, or both.
Should you always use an accessor to cover your bases? Why or why not?
  - Probably not, while accessor is convienent attribute to be able to bother write and read an instanced variable, for cleaner code, and future refactoring and debugging, it will be better to only use attr_reader to reduce changes of mistakes.
What is confusing to you about these methods?
  - Almost all if it, while it all makes sense written out and thinking about it logically, however knowing when and how to use this on a black slate, will take a while.

=end