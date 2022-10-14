=begin

Problem:
Write a method that takes two arguments, a string and a positive integer, and prints the string
as many times as the integer indicates.

Understand the problem:
Method takes two input arguments (string, integer)
If the string is 'hello' and integer is 3, print 'hello' 3 times.
Each string will be printed on a new line

Input:
String, Integer

Ouput:
String

Explicit requirements:
Method takes two arguments, a string and integer
Print the string as many times as the integer indicates

Implicit requirements:
Each string is printed on a new line

Questions:
What happens when we pass an empty string or a 0 to our arguments?

Data Structure:
Input: String, Integer
Output: String

Algorithm:
Write a method called 'repeat'
The method takes two input arguments (String, Integer)
If the string is 'hello' and integer is 3, print 'hello' 3 times
Print each string on a new line
END

=end

def repeat(string, integer)
  integer.times do
    puts string
  end
end

repeat('hello', 3)
repeat('world', 4)
repeat('tomorrow', 0)