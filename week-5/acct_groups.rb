# Pseudocode
=begin
  Input: large list of names
  Output: Short list of names in groups
    Take list of names
    Separate names into smaller lists
      IF group has only one or two elements (names) place elements in other gorup
    Output small groups
=end

#inital solution
rockdoves = ["Brad L.", "Brittney B.", "David H.", "David K.", "Emmet G.", "Erica L.", "Gregory T.", "Jack B.", "Jasmeet C.", "Jon N.", "Joshua L.", "Kevin F.", "Michael V.", "Milorad F.", "Oscar D.", "Ryan D.", "Sami Z.", "Sean N.", "Tomasz S.", "Wesley E.", "person 82", "person 93"]
=begin
def account_groups(rockdoves)
  small_group = rockdoves.each_slice(4).to_a
    if small_group[-1].length < 3
      (small_group[-1] << small_group[-2]).flatten!
      end
    small_group
end
=end
#p account_groups(rockdoves)
 #random order group

def account_groups(rockdoves)
  rockdoves = rockdoves.shuffle
  small_group = rockdoves.each_slice(4).to_a
    if small_group[-1].length < 3
      (small_group[-1] << small_group[-2]).flatten!
      end
    small_group
end
p account_groups(rockdoves)
=begin
What was the most interesting and most difficult part of this challenge?
  - The most difficult part on this challenge was figuring out how to to define smaller groups and how to separate the large group into smaller groups... or the entire point of the challenge. Once I got the ideas down, building was the most interesting part, pieceing together the last small group (-1) into the second to last group if it had less than 3 members.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
  - I do feel like I am improving, I am maing a point to write down my pseudocode into a notebook away from my laptop first, so I can do the whole thing in laymens terms. Its been helpful.
Was your approach for automating this task a good solution? What could have made it even better?
  - I think it was a good solution with the knowledge that I have so far in this program. There may be better and simplier solutions, but I have not come across them in my research.
What data structure did you decide to store the accountability groups in and why?
  - I stored the data in smaller groups of arrays, giving a list of names, and in the second solution adding a shuffle feature to have different groups each time you run the code.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  - I learned the .shuffle to mix up the main array to allow for different groups. I also learned the .each_slice(n) which allows breaking up the main array and SLICE them into small groups of arrays.

=end
