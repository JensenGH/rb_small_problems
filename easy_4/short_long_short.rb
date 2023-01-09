=begin

Problem:
- Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, longer string, and then the
shorter string once again. You may assume that the strings are of different lengths.

Examples/ test cases:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

Explicit requirements:
- Determine which string is the longest of the two input strings
- Concatenate the short string, long string, and then short string again.

Implicit requirements:
- You may assume the strings are different lengths.

Data structure:
- The input is two strings as arguments
- The output is the two strings concatenated together by short_string + long_string + short_string

Algo:
- Create a method called 'short_long_short'
- This method takes two strings as input arguments
- Create a result variable with the value of an empty string
- If the first input string is greater then the second, concatenate appropriately and append
to result variable.
- If the second input string is greater then the first, concatenate appropriately and append
to result variable.
- Operation: short_string + long_string + short_string
- Print result

=end

# Code

def short_long_short(str1, str2)
  result = ''

  if str1.size > str2.size
    result << str2 + str1 + str2
  else
    result << str1 + str2 + str1
  end

  result
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"