=begin

Problem:
- Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The
program must compute the tip and then display both the tip and the total amount of the bill.

Explicit requirements:
- Prompt for a bill amount/ tip rate.
- Compute the tip and display both the tip and total amount of the bill.

Implicit requirements:
- None

Data strucure:
- The input is a float
- The output is the result of computing our tip and bill amount.

Algo:
- Ask the user for a bill amount
- Create a variable called 'bill' and store the bill amount value inside, convert input to a float.
- Ask the user for a tip percentage
- Create a variable called 'percentage' and store the percentage inside, convert input to a float.
- Create a variable called tip
  - To retreive the tip amount, divide the tip percentage by 100, and multiply by the bill amount
- Create a variable called 'total'
  - The total is the bill plus the tip added together.
- Output the results of the tip and the total.
=end

# Code with further exploration (Using Kernel #format to display two decimal places)

puts ">> What is the bill?"
bill = gets.chomp.to_f

puts ">> What's the tip percentage?"
percentage = gets.chomp.to_f

tip = bill * (percentage / 100)
total = bill + tip

puts ">> The tip is #{sprintf("$%0.2f",tip)}"
puts ">> The total is #{sprintf("$%0.2f",total)}"