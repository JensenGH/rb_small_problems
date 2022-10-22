=begin

Problem:
Build a program that asks a user for the length and width of a room in meters and then displays
the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run:
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

Understand the problem:
Ask the user for the length and width of a room in meters
Then, display the area of the room in both square meters and square feet.
1 square meter == 10.7639 square feet
Don't worry about validating input
Input:String
Output: String converted to Float

Explicit requirements:
Display the area of the room in both square meters and square feet
1 square meter == 10.7639 square feet
Don't worry about validating input

Implicit requirements:
None

Questions:
None

Data structure:
Input: String
Output: A sentence of substrings with integers indicating the square meters and feet of the area

Algorithm:
Ask the user for the length of room in meters
Create a variable called 'length' to store user input, convert string to float
Ask the user for the width of the room in meters
Create a variable called 'width' to store user input, conver string to float
SET a variable called 'area' equal to length * width, then round to nearest tenths
SET variable called 'sq_meters_to_sq_feet equal to area * 10.7639
Print result

=end

# Code

SQ_METERS_TO_SQ_FEET = 10.7639

puts ">> Enter the length of the room in meters:"
length = gets.chomp.to_f

puts ">> Enter the width of the room in meters:"
width = gets.chomp.to_f

area = (length * width).round(2)
sq_feet = area * SQ_METERS_TO_SQ_FEET

puts ">> The area of the room is #{area} square meters (#{sq_feet} square feet)"

# Code with further exploration

SQ_FEET_TO_SQ_INCHES = 144
SQ_FEET_TO_SQ_CM = 929.03

puts ">> Enter the length of the room in feet:"
length = gets.chomp.to_f

puts ">> Enter the width of the room in meters:"
width = gets.chomp.to_f

area = (length * width).round(2)
sq_inches = area * SQ_FEET_TO_SQ_INCHES
sq_cm = area * SQ_FEET_TO_SQ_CM

result = <<-output_result

>> The area of the room is #{area} square feet, #{sq_inches} 
in square inches, and #{sq_cm} in square centimeters.

output_result

puts result