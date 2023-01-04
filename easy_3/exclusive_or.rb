=begin

Problem:
- Write a method named 'xor' that takes two arguments, and returns true if exactly one of its
arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a
truthy/ falsy value as returned by || and &&.

Examples/ Test cases:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

Explicit requirements:
- The || operator returns a truthy value if either or both of its operands are truthy.
- If both operands are falsey, it returns a falsey value.
- The && operator returns a truthy value if both of its operands are truthy, falsey otherwise. 
- The method will return true if exactly one of its arguments is truthy, false otherwise.
- Return a boolean value, not a truthy/ falsey value. 

Implicit requirements:
- None

Data structure:
- The input has two arguments, an integer with the #even or #odd method chained to it. (e.g. 5.odd?, 4.even?)
- The output is a boolean.

Algo:
- Create a method named 'xor?'
- This method takes two arguments (e.g. 5.even?, 4.even?)
- If one of the arguments is truthy, return true, false otherwise.

=end

# Code

def xor?(num1, num2)
  if num1 == true || num2 == true
    true
  elsif num1 == true && num2 == true
    false
  else
    true
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false