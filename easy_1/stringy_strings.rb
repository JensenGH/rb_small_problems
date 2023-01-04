=begin

Problem:
- Write a method that takes one argument, a positive integer, and returns a string of alternating
1s and 0s, always starting with 1. The length of the string should match the given integer.

- The test examples should print true.

Examples/ test cases:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

Explicit requirements:
- The string that our method returns will alternate 1s and 0s, always starting with 1.
- The length of the string should match the input integer.
- The input integer must be positive.
- All test cases should print true.

Implicit requirements:
- None

Data structure:
- The input is one positive integer.
- The output is a string of alternating 1s and 0s the size of the input integer.

Algo:
- Create a method named 'stringy'
- This method takes one positive integer as an input argument
- Create a method called 'num-str' to store our result in.
- We can use the #times method so that when we iterate it matches the given integer.
- Since the #times method iterates from (zero to int - 1; e.g. 5 => 0, 1, 2, 3, 4), we can say
that if the value is an even integer, to append a '1' at those values, otherwise append
a '0' for the odd values.
- Print result

=end

# Code

def stringy(num)
  num_str = ''
  num.times do |index|
    if index.even?
      num_str << '1'
    else
      num_str << '0'
    end
  end

  num_str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'