=begin

Problem:
- Write a method that will take a short line of text, and print it within a box.
- You may assume that the input will always fit in your terminal window.

Examples/ test cases:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

Explicit requirements:
- Print a short line of text within a box.
- You may assume the input will always fit in your terminal window.

Implicit requirements:
- None

Data structure:
- The input and output are both string objects.

Algo:
- Create a method named 'print_in_box'
- This method takes a string as an argument
- The first thing to do is create the text box which will display our input
- Create a variable named 'horizontal_line'. The value will be the top and bottom lines for the box
- Create a variable named 'vertical_line'. The value will be the left and right sides of the box
  - By looking at the example we could get a good idea of how we want our box to look
- Once the lines are set for the box, use puts to output the box and text

=end

# Code

def print_in_box(string)
  horizontal_line = "+#{'-' * (string.size + 2)}+"
  vertical_line = "|#{' ' * (string.size + 2)}|"

  puts horizontal_line
  puts vertical_line
  puts "| #{string} |"
  puts vertical_line
  puts horizontal_line
end

print_in_box("Today was a good day.")