=begin

Problem:
- The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752,
the Julian Calender was used. Under the Julian Calendar, leap years occur in any year that
is evenly divisble by 4.

- Using this information, update the method from the previous 'leap_years' excerise to
determine leap years both before and after 1752.

Examples/ test cases:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

Explicit requirements:
- Before 1752, the Julian Calender was used. Under this calender, leap years occur in years
evenly divisible by 4

Implicit requirements:
- None

Data structure:
- The input is an integer representing the year
- The output is a boolean depending on if the year is a leap year or not

Algorithm:
- Use the same method from the previous exercise
- Add one condition to the top: "if year < 1752 and evenly divisible by 4, print true"

=end

# Code

def leap_year?(year)
  if year < 1752 && year / 4 == 0
    true
  elsif year % 400 == 0
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