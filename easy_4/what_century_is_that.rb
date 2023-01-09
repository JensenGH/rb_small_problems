=begin

Problem:
- Write a method that takes a year as input and returns the century. The return value should be a
string that begins with the century number, and ends with 'st', 'nd', 'rd', or 'th' as appropriate
for that number. New centuries begin in years that end with 01. 

- E.g. (years 1901-2000 == 20th century); (years 2001 - 3000 == 21st century)

Examples/ test_cases:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

Explicit requirements:
- The return value should begin with the century number and end with the appropriate suffix
  for that number.
- New centuries begin in years that end with 01. e.g. 1901-2000 comprise the 20th century. 

Implicit requirements:
- None

Data structure:
- The input is an integer representing the year
- The output is a string that begins with the century number and ends with the appropriate suffix
for that number

Algo:
Method 1:
- Create a method named 'century'
- This method takes an integer that represents the year as an input argument
- Create a variable named 'century'
  - To calculate a century in years, you divide the year by 100 plus 1.
- Reassign century equal to (year / 100) if the year % 100 is equal to 0
- Convert integer to string for the desired output
- Invoke the suffix method and pass century as an arguement
Method 2:
- Create a method named 'suffix'
- This method takes a string as an input argument
- Check the last digit of the century to determine which suffix to use:
  - If the last digit ends in '11', '12', or '13' then append a 'th' to the century, otherwise
  append the appropriate suffix.

=end

# Code

def century(year)
  century = (year / 100) + 1
  century = (year / 100) if year % 100 == 0
  century = century.to_s
  suffix(century)
end

def suffix(century)
  if century.end_with?('11', '12', '13')
    century + 'th'
  elsif century[-1] == '1'
    century + 'st'
  elsif century[-1] == '2'
    century + 'nd'
  elsif century[-1] == '3'
    century + 'rd'
  else
    century + 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'