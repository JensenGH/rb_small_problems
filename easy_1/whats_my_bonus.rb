=begin

Problem:
- Write a method that takes two arguments, a positive integer and a boolean, and calculates the
bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If
the boolean if false, the bonus should be 0.

- The test cases should print true.

Examples/ test cases:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

Explicit requirements:
- The method takes one positive integer and one boolean as input arguments
- If the boolean is true, the bonus should be half of the salary.
- If the boolean is false, the bonus should equal 0.
- The tests cases should print true.

Implicit requirements:
- Look at the input boolean first to determine the salary.

Data structure:
- The input is a positive integer and a boolean value.
- The output is half the salary if the boolean is true, otherwise 0 if false. The test cases
should all print true.
- Using a ternary operator which provides our conditional statement and the two possible outcomes,
depending whether the condition is true or false.

Algo:
- Create a method named 'calculate_bonus'
- This method takes two arguments, a positive integer and a boolean value.
- If the boolean is true, the salary gets divided into 2
- Else, return 0

=end

# Code

def calculate_bonus(salary, boolean)
  boolean == true ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000