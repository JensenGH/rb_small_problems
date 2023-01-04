=begin

Problem:
- Write a method that takes a positive integer, n, as an argument, and displays a right triangle
whose sides each have n stars. The hypotenuse of the triangle should have one end at the lower-left
of the triangle, and the other end at the upper-right.

- Example output:
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

Explicit requirements:
- The input must be a positive integer
- The output should display a right triangle.
- The hypotenuse of the triangle should have one end at the lower-left/ and the other at the
upper-right.

Implicit requirements:
- 

Data structure:
- The input is a positive integer
- The output is a right triangle whose sides each have 'n' stars

Algo:
- Create a method named 'triangle'
- This method takes a positive integer as an argument
- Create a variable named 'spaces' equal to (input - 1)
- Create a variable named 'stars' equal to 1
- For each iteration we output the number of spaces and stars
- On each iteration the spaces amount gets decremented while the number of stars increases

=end

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)