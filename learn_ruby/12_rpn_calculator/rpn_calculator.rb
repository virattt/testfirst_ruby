class RPNCalculator
  attr_accessor :stack # the calculator stack

  # construct the calculator as an empty array
  #
  def initialize
    @stack = []
  end
  # add the last two elements on the stack
  #
  def plus
    push(pop + pop)
  end
  # subtract the last two elements on the stack
  #
  def minus
    tmp = @stack.pop
    push(pop - tmp)
  end
  # multiply the last two elements on the stack
  #
  def times
    push(pop * pop)
  end
  # divide the last two elements on the stack
  #
  def divide
    tmp = @stack.pop
    push(pop / tmp)
  end
  # "push"/append a float to the end of the stack
  #
  def push(num)
    @stack.push(num.to_f)
  end
  # "pop"/remove the element at the end of the stack
  #
  def pop
    total = @stack.pop
    raise "calculator is empty" if total.nil? 
    return total
  end
  # return the value of the last element on the stack
  #
  def value
    @stack.last
  end
  # tokenizes a string into an array of ints and symbols
  #
  def tokens(str)
    token_string = []
    operations = ["+", "-", "*", "/"]
    str.split(" ").each do |element|
      if operations.include?(element)
        token_string.push(element.to_sym)
      else
        token_string.push(element.to_i)
      end
    end
    token_string
  end
  # evaluates a tokenized string
  #
  def evaluate(token_str)
    t = tokens(token_str)
    t.each do |token|
        if token == :+ 
          plus
        elsif token == :- 
          minus
        elsif token == :* 
          times
        elsif token == :/ 
          divide
        else 
          push token
      end
    end
    value
  end
end
