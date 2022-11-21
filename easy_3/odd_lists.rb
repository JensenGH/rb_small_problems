=begin

Problem:
Write a method that returns an Array that contains every other element of an Array that is passed
in as an argument. The values in the returned list should be those values that are in the 1st,
3rd, 5th, and so on elements of the argument Array.

Examples/ Test cases:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

Input:
An array of numbers

Output:
An array that contains every other element of the original array passed in as an argument.

Explicit requirements:
Return an array that contains every other element from the input array.
The values in the returned list should be those values that are on the even indexes.

Implicit requirements:
Skip elements that are on odd indexes.

Questions:
None

Data structure:
Input: An array of numbers

Output: An array of values that are in the 1st, 3rd, 5th, and so on elements of the input array.

Algorithm:
Create a method called 'oddities that takes one input argument, an array
Create a result variable that stores an empty array
Create a counter variable equal to 0
Create a loop to iterate through the array
Break if counter is equal to the array size
Access each individual element and store in a variable called 'current_num'
Append each element at even indexes to the result variable
Increment the counter variable by +2 to skip odd indexes.
Return the result variable

=end

# Code

def oddities(array)
  result = []
  counter = 0

  loop do
    break if counter >= array.size

    current_num = array[counter]
    result << current_num

    counter += 2
  end

  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# Code with further exploration
# Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array.

def oddities2(array)
  result = []
  counter = 1

  loop do
    break if counter >= array.size

    current_num = array[counter]
    result << current_num

    counter += 2
  end

  result
end


p oddities2([2, 3, 4, 5, 6]) == [3, 5]
p oddities2([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities2(['abc', 'def']) == ['def']
p oddities2([123]) == [] # Since we skip the first index, this array returns empty.
p oddities2([]) == []
p oddities2([1, 2, 3, 4, 1]) == [2, 4]