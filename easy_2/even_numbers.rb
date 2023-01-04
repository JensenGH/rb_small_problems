=begin

Problem:
- Print all even numbers from 1 to 99, inclusive, to the console, with each number on a seperate line

Example output:
2
4
6
8
..

Explicit requirements:
- Print all even numbers from 1 to 99 inclusive, on a seperate line.

Implicit requirements:
- None

Data structure:
- Using the Integer #upto method. This method iterates the given block and passes in integer values
from "starting_num" up to and including "limit_num".

Algo:
- Using the Integer #upto method, integer 1 is our starting number and 99 is our max limit.
- Passing in a block, we can 'puts num' if the number is even.

=end

# Code

1.upto(99) { |num| puts num if num.even?}