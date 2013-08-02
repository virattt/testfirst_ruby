def encode(str)
  arr = []
  count = 1
  i = 0
  str.each_char do |char|
    if str[i] == str[i + 1]
      count += 1
      i += 1
    else
      arr.push([str[i], count])
      count = 1
      i += 1
    end
  end
  arr
end