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
- First we call the Integer#digits method. When calling this method without an arguement,
will return the given integers in reverse order as an array object.
- Second, we can call Array#join on the array. When calling this method without an argument
will return a string by converting each element in the array to a string object.
- Third, Invoke the String#to_i method to convert the string of numbers back into Integers.
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