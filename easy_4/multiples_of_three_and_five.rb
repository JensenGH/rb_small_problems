=begin

Problem:
- Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other
number, and then computes the sum of those multiples. For instance, if the supplied number
is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 18 + 20).

- You may assume that the number passed is an integer greater than 1.

Examples/ test cases:
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

Explicit requirements:
- Search for multiples of 3 or 5 that lie between 1 and some other number.
- Compute the sum for those multiples

Implicit requirements:
- None

Data structure:
- The input is an integer
- The output is the sum of the multiples of 3 and 5 for a given integer

Algo:
- Create a method named 'multisum'
- This method takes an integer as input
- Create a variable called 'sum' = 0
- From 1 up to the given integer, compute the sum if the number is a multiple of 3 OR 5
- Append the result to the 'sum' variable
- Print result

=end

# Code

def multisum(num)
  sum = 0
  1.upto(num) { |n| sum += n if n % 3 == 0 || n % 5 == 0 }
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168