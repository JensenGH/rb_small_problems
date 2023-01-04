=begin

Problem:
- Write a method that takes a non-empty string argument, and returns the middle character or characters
of the argument. If the argument has an odd length, you should return exactly one character. If
the argument has an even length, you should return exactly two characters.

Examples/ test cases:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

Explicit requirements:
- The input string cannot be empty.
- If the length of the string is odd, return exactly one characters
- If the length of the string is even, return exactly two characters

Implicit requirements:
- If the input string is one character long, return that character.

Data structure:
- The input and output are both string objects.
- Ternary operator is used for our conditonal statement/ the two possible outcomes.
  - Used element reference, which if passed a single index, returns a substring of one character
  at that index. This allows us to also pass in a range for even sized strings. 

Algo:
- Create a method called 'center_of'
- This method takes one argument, a string
- Create a variable called 'center' equal to the (string size / 2)
- Using a ternary operator for output a result, we can say for our conditonal:
  - If the size of the string is odd, output the middle character within the string, otherwise
  output the character to the left of the centerpoint and the character to the right.

=end


def center_of(string)
  center = string.size / 2
  string.size.odd? ? string[center] : string[center - 1, 2]
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'