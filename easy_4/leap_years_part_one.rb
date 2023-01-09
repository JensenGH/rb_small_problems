=begin

Problem:
- In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly
divisble by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100,
then it is not a leap year unless the year is evenly divisible by 400.

- Assume this rule is good for any year greater than 0. Write a method that takes and year greater
than 0 as input, and returns true if the year is a leap year, false otherwise.

Examples/ Test cases:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

Explicit requirements:
- Under the Gregorian Calender, leap years occur every year that is even divisible by 4
- If the year is evenly divisble by 4 and divisible by 100, it is not a leap year
- If the year is evenly divisible by 100 it is not a leap year, unless it is also evenly divisble
by 400
- Assume this rule is good for any year greater than 0

Implicit requirements:
- None

Data structure:
- The input is an integer that represents the year
- The output is a boolean. True if the year is a leap year, false otherwise

Algorithm:
- Create a method named 'leap_year'
- This method takes an integer as input
- If the year is evenly divisble by 4, it's a leap year
- If the year is evenly divisble by 100, it's not a leap year
- If the year is evenly divisble by 400, it's a leap year.
=end

# Code

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true