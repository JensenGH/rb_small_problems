=begin

Problem:
- Write a method that takes a string of digits, and returns the appropriate number as an integer.

- Don't worry about leading + or - signs, nor should you worry about invalid characters; assume
all characters are numeric.

- You may not use the standard conversion methods available in Ruby such as String #to_i, Integer(),
etc.

Examples/ test cases:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

Explicit requirements:
- Don't worry about leading + or - signs, nor should you worry about invalid characters; assume
all characters are numeric.
- You may not use the standard conversion methods available in Ruby such as String #to_i, Integer(),
etc.

Implicit requirements:
- None

Data structure:
- The input is a string of integers
- The output is the appropriate number as an integer
- DIGITS hash

Algo:
- Create a method 'string_to_integer'
- This method takes a string as input
- Iterate through each character within the string using String #each_char
- Call map to return a new array
- Convert each number string into an integer using the DIGITS hash
- Create a result variable = 0
- Iterate through each number within the digits array
- Take each digit and add it to 10 times the previous value
- Print result

=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.each_char.map { |char| DIGITS[char] }

  result = 0
  digits.each { |num| result = (10 * result) + num}
  result
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Finish Algo