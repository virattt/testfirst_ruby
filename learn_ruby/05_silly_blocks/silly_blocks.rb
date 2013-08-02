def reverser
  yield.split(' ').map(&:reverse!).join(' ')
end

def adder(i= 1)
  yield + i
end

def repeater(i=1)
  i.times do
    yield
  end
end