=begin

Problem:
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The
program must compute the tip and then display both the tip and the total amount of the bill.

Understand the problem:
Create a simple tip calculator
The program should ask the user for a bill amount and a tip rate
Once the user inputs the bill/ tip, the program must compute the tip, then display the tip and
total amount of the bill
Input: String
Output: String

Explicit requirements:
Prompt user for a bill amount/ tip rate
Program must compute the tip then display both the tip and total amount of the bill

Implicit requirements:
None

Questions:
None

Data strucure:
Input: String
Output: String

Algorithm:
Prompt the user for a bill amount
Convert user input from string to float and store in variable called 'bill'
Prompt user for tip percentage
Convert percentage from string to float and store in a variable called 'percentage'
Calculate the tip amount and the total bill and store in variables called 'tip' and 'total'
Print strings displays the tip amount and total amount of the bill

=end

# Code with further exploration (Using Kernel #format to display two decimal places)

puts ">> What is the bill?"
bill = gets.chomp.to_f

puts ">> What's the percentage?"
percentage = gets.chomp.to_f

tip = bill * (percentage / 100)
total = bill + tip

puts ">> The tip is #{sprintf("$%0.2f",tip)}"
puts ">> The total is #{sprintf("$%0.2f",total)}"