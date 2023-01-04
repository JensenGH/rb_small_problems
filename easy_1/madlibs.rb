=begin

Problem:
- Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective
and injects those into a story that you create.

Examples/ test cases:
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

Explicit requirements:
- Prompt the user for a noun, verb, an adverb, and an adjective/ inject those words into a story
that you create.

Implicit requirements:
- None

Questions:
- None

Data structure:
- Using 'puts' to output messages to the user
- Using 'gets' to get user input (noun, verb, adverb, adjective) and storing them into variables 
that we can call on when we output our story by using string interpolation.

Algo:
- Prompt the user for a noun, verb, an adverb, and an adjective and store them into variables.
- Output the story using 'puts' and use string interpolation to access our variables. (user input)

=end

# Code

# My words:
# noun - days
# verb - remember
# adverb - always
# adjective - fun

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

puts "I #{verb} the good ol' #{noun} when I would #{adverb} have so much #{adjective} as a kid."