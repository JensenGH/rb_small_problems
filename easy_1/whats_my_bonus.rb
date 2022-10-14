=begin

Problem:
Write a method that takes two arguments, a positive integer and a boolean, and calulates the bonus
for a given salary. If the boolean is true, the bonus should be half of the salary. If the
boolean is false, the bonus should be 0.

Understand the problem:
Write a method called 'calculate_bonus' that takes two arguments (integer, boolean)
If the boolean given is true, the bonus should be half of the salary
If the boolean given is false, the bonus should be 0
The test examples should print true
Input: Integer, Boolean
Output: Boolean

Explicit requirements:
Method takes two arguments, an integer and boolean
If the boolean is true, the bonus should be half of the salary
If the boolean is false, the bonus should be 0
Test cases should print true

Implicit requirements:
If the test cases don't match, print false

Questions:
None

Data structure:
Input: Integer, Boolean
Output: Boolean

Algorithm:
Create a method called 'calculate_bonus' that takes two arguments, (integer, boolean)
If the boolean is equal to true, then the bonus is equal to half the salary
If the boolean is equal to false, then the bonus is equal to 0
Print boolean

=end

# Code

def calculate_bonus(salary, boolean)
  if boolean == true
    bonus = salary / 2
  else
    bonus == 0
  end

  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000