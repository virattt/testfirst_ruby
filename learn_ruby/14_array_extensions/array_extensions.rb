class Array
  # returns the sum of the numbers
  # in the array
  #
  def sum
    total = 0
    self.each do |num|
      total += num
    end
    total
  end
  # squares each element in the array
  # and returns it in a new array
  #
  def square
    self.map do |num|
      num ** 2
    end
  end
  # squares each element in the array
  # and returns it in the same array
  #
  def square!
    self.map! do |num|
      num ** 2
    end
  end
end