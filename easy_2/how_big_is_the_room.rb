=begin

Problem:
- Build a program that asks a user for the length and width of a room in meters and then displays
the area of the room in both square meters and square feet.

- Note: 1 square meter == 10.7639 square feet

- Do not worry about validating the input at this time.

Example Run:
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

Explicit requirements:
- 1 square meter is equal to 10.7639 square feet.

Implicit requirements:
- Don't worry about validating inputs.

Data structure:
- Input is a float representing either the length, width, square meters, etc.. 
- Output is a sentence that describes the length of the room in meters, the width of the room in
meters, the area of the room in square meters/ square feet.

Algo:
- Create a constant to represent how many square feet are in one square meter.
- Ask the user for the length of the room in meters and store result in a variable called 'length'.
  - Convert input to a float.
- Ask the user for the width of the room in meters and store result in a variable called 'width'.
  - Convert input to a float.
- Create a variable called 'area' equal to (length * width) and round the number.
- Create a variable called 'sq_feet' equal to (area * SQ_METERS_TO_SQ_FEET).
- Output the result to the user.

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