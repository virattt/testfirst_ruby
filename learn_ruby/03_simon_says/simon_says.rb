# returns the string that is passed into
# the function, as is
#
def echo(str)
  str
end
# capitalizes all of the letters in
# the string
#
def shout(str)
  str.upcase
end
# this method returns multiple versions
# of the original string, in a new string
#
def repeat(str, i=2)
  ([str] * i).join(" ")
end
# returns the letters in a word up to
# a given index in the word
#
def start_of_word(word, index)
  word[0...index]
end
# returns the first word in a string
#
def first_word(str)
  str.split.first
end
# capitalizes the words in a strong except for
# the "small words" i.e. 'the', 'and', 'over'
#
def titleize(str)
 
  words = str.split(' ')

  small_words = ["and", "the", "over"]  
  words.each do |word|
    
    if small_words.include?(word)    
      word.downcase!
    
    else
      
      word.capitalize!
    
    end
  
  end
  
  words.first.capitalize!
  
  words.join(' ')

end