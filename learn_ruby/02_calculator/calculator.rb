# This method adds two numbers, i and j
#
def add(i, j)
  i + j
end
# This method takes the difference between two numbers, i and j
#
def subtract(i, j)
  i - j
end
# This method takes an array of numbers and adds them together
#
def sum(arr)
  sum = 0
  arr.each { |num| sum += num }
  sum
end
# This method multiples the parameters together
#
def multiply(*numbers)
  product = 1
  numbers.each { |num| product *= num }
  product
end
# This method raises one number, i, to the power of another, j
#
def power(i,j)
  i ** j
end
# This method computes the factorial of a number, i
#
def factorial(i)
  if i == 0
    1
  else
    i * factorial(i-1)
  end
end