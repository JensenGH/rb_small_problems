=begin

*PEDAC*

*Problem*

Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, the longer string, and the
shorter string once again. You may assume that the strings are different length.

*Examples/ Test Cases*

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

*Questions for clarity*

1. What happens when we pass an empty string as an argument?
- Our last test case shows when we concatenate an empty string to a non-empty string, the
result is the non-empty string.

2. Can I assume that all inputs are strings?
  - The test cases do not show any non-string inputs.

3. Am I returning a new string?
  - The problem states we are performing string concatenation. This operation returns a new
  string object.

*Data Structure*

Input: two strings as arguments

Output: A new string that is the result of concatenating the shorter string, the longer string,
and the shorter string once again.

*Algorithm*

- Create a method called `short_long_short` that takes two strings as arguments
- If the size of the first string is shorter then the size of the second string, then concatenate
the first string, second string, then first string again
- If the size of the first string is longer then the size of the second string, then concatenate
the second string, first string, then second string again.

=end

def short_long_short(string1, string2)
  if string1.length < string2.length
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc" # => true
p short_long_short('abcde', 'fgh') == "fghabcdefgh" # => true
p short_long_short('', 'xyz') == "xyz" # => true