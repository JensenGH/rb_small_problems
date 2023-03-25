=begin

Problem:
- Write a method that takes a positive integer as an argument and returns that number with its
digits reversed.

- Don't worry about arguments with leading zeros.

Examples/ test cases:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

Explicit requirements:
- Don't worry about arguments with leading zeros.

Implicit requirements:
- None

Data structure:
- The input is a positive integer
- The output is the input digits in reversed order

Algo:
- Create a method called 'reversed_number'
- This method takes a positive number as an argument
- To get the correct output, we can chain a few methods together:
- First, convert the input into a string using 'to_s'
- Second, invoke the String #chars method to turn our string of digits into an array of digits.
- Third, invoke the Array #reverse method to reverse the digits like the problem asks.
- Lastly, invoke the Array #join method which returns a string created by converting each element
of the array to a string and call 'to_i' to convert our string back to an integer.

=end

# Code

def reversed_number(num)
  num.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1