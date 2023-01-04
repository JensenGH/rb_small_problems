=begin

Problem:
- Write a method that takes two arguments, a string and a positive integer, and prints the string
as many times as the integer indicates.
- Our two inputs are a string and integer
- Our output is the input string printed each time on a new line, however many times our integer
argument indicates.

Examples/ test cases:
repeat('Hello', 3)

Explicit arguments:
- The input integer must be positive

Implicit requirements:
- Since our example output shows each string printed on a new line, this should indicate that
we should use 'puts' to output our string within our method. This means our method returns nil,
but will output the given string.

Data structure:
- The method takes two arguments, one string and one positive integer
- The output is the input string printed each time on a new line, however many times our integer
argument indicates.

Algo:
- Create a method named 'repeat'
- This method will take two input arguments, a string and a positive integer
- We can use the Integer #times method to output our string. This method will iterate the given
block as many times as the input integer amounts to. (from zero to 'integer' - 1)
- Finally, we can output our string using 'puts' on the last line.

=end

# Code

def repeat(str, num)
  num.times do
    puts str
  end
end

repeat('Hello', 3)