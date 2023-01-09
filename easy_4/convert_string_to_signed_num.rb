=begin

Problem: 
- Write a method that takes a string of digits, and returns the appropriate number as
an integer. The string may have leading + or - signs; if the first character is a +, your method
should return a positive number; if it is a -, your method should return a negative number.
If no sign is given, you should return a positive number.

Input: string of integers

Output: returns the same numbers as the given string, but converted to integers.

Examples/ test cases:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

Explicit requirements:
- Return positive numbers if the string begins with a + sign
- Return negative numbers if the string begins with a - sign
- Cannot use #to_i, Integer(), or any other conversion methods.
- We may use the previous solution from 'string_to_integer' to help us out

Implicit requirements:
- If the input string does not have a + or - sign as it's first character, return a positive integer

Questions:
- 

Data structure:
Input: string of numbers
Output: returns the same numbers as the given string, but converted to integers.
Reusing our previous method 'string_to_integer'

Algorithm:
- We can use our previous method "string_to_integer" as a helper method
- Within our new method "string_to_a_signed_number":
  - If the string starts with a "+" sign, return positive integers
    Elsif the string starts with a "-" sign, return negative integers
    Else, return positive integers.

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

def string_to_signed_integer(string)
  if string.start_with?('+')
    string_to_integer(string[1..-1])
  elsif string.start_with?('-')
    -string_to_integer(string[1..-1])
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100