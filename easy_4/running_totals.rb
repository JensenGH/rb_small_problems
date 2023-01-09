=begin

Problem: 
- Write a method that takes an Array of numbers, and returns an Array with the same
number of elements, and each element has the running total from the original array.

- A running total is the sum of all values in a list up to an including the current element.

Examples/ Test cases:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

Explicit requirements:
- A running total is the sum of all values in a list up to an including the current element.

Implicit requirements:
- None

Data structure:
- The input is an array of integers
- The output is an array of integers where each element is the running total from the original

Algo:
- Create a method named 'running_total
- This method takes an array as input
- Create a result variable named 'running_total'
- Create a sum variable equal to 0
- Iterate through the original array and increment sum + num each iteration
- Append the sum to the result variable.
- Print result

=end

# Solution

def running_total(arr)
  running_total = []
  sum = 0
  arr.each do |num|
    sum += num
    running_total << sum
  end

  running_total
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []