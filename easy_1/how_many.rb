=begin

Problem:
Write a method that counts the number of occurrences of each element in a given array. The words
are case-sensitive: 'suv != 'SUV'. Once counted, print each element alongside the number of
occurences.

Understand the problem:
Write a method that takes one input argument, an array
Iterate through the collection and track the number of occurrences for each element
The words are case sensitive: 'suv' != 'SUV'
Print the element and number of occurrences (on new lines)
Input will be in array
Expected output:
car => 4
truck => 3
SUV => 1
motorcycle => 2

Explicit requirements:
Input argument must be an array
The words in the array are case-sensitive
Once counted, print each element alongside its number of occurrences

Implicit requirements:
Each element and its number of occurrences must be printed on new lines

Questions:
None

Data structure:
Input: Array
Output:
car => 4
truck => 3
SUV => 1
motorcycle => 2

Algorithm:
Create a method called 'count_occurrences'
Method accepts one argument, an array
Reassign the input array and call map, then iterate through the collection and downcase each
element in the array
Then iterate through the array, finding uniq elements (elements that are the same)
Count the number of occurrences for each element
Print each element and its number of occurences using syntax: element => # of occurrences

=end

# Code with further exploration (words are case-insensitive)

def count_occurrences(array)
  array = array.map { |element| element.downcase }

  array.uniq.each do |element|
    puts "#{element} => #{array.count(element)}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv', 'TRUCK',
  'CAR'
] # added elements to test the further exploration challenge     

count_occurrences(vehicles)