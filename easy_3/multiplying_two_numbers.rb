=begin

Problem:
- Create a method that takes two agruments, multiplies them together, and returns the result.

Examples/ test cases:
multiply(5, 3) == 15
multiply(10, 5) == 50
multiply(-8, -8) == 64

Explicit requirements:
- Multiply the two input integers and return the result 

Implicit requirements:
- None

Data structure:
- The input is two integers. The problem does not state that the integers can't be positive, negative,
or zero.

Algo:
- Create a method named 'multiply'
- This method takes two integers as arguments
- Multiply the two integers and output the result

=end

# Code

def multiply(first_num, second_num)
  first_num * second_num
end

p multiply(5, 3) == 15
p multiply(10, 5) == 50
p multiply(-8, -8) == 64


# Further exploration: What happens when you multiply an Array by an integer?

a = ['Hello', 'World']
b = a * 2

p a.object_id # 60
p a[0].object_id, a[1].object_id # 80, 100
p b.object_id # 120
p b[0].object_id, b[1].object_id, b[2].object_id, b[3].object_id # 80, 100, 80, 100

# When you multiply an Array by an integer, the operation returns a new array with the original
# elements repeated integer times. The repeated elements point to the same object as the original
# array.