=begin

Problem:
- Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a seperate line

Example output:
1
3
5
7
..

Explicit requirements:
- Print all odd numbers from 1 to 99 inclusive, on a seperate line.

Implicit requirements:
- None

Data structure:
- Using the Integer #upto method. This method iterates the given block and passes in integer values
from "starting_num" up to and including "limit_num".

Algo:
- Using the Integer #upto method, integer 1 is our starting number and 99 is our max limit.
- Passing in a block, we can 'puts num' if the number is odd.

=end

1.upto(99) { |num| puts num if num.odd?}

# Code with further exploration (solve the exercise using a different technique/ solution)

value = 1

until value > 99
  puts value
  value += 2
end