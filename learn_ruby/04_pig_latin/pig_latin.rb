# Translates an entire sequence
# of words
def translate(str)
  pig_latin = []
  i = 0
  words = str.downcase.split(' ')
  words.each do |word|
    pig_latin[i] = translate_word(word)
    i += 1
  end
  pig_latin.join(' ')
end
# Translates a given word
#
def translate_word(word)
  translated_word = ''
  vowels = %w[a e i o u]
  alphabet = ('a'..'z').to_a
  consonants = alphabet - vowels
  
  if vowels.include?(word[0])
    translated_word = word + "ay"
  elsif consonants.include?(word[0]) && word[1..2] == "qu"
    translated_word = word[3..-1] + word[0..2] + "ay"
  elsif word[0..1] == "qu"
    translated_word = word[2..-1] + word[0..1] + "ay"
  elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
    translated_word = word[3..-1] + word[0..2] + "ay"
  elsif consonants.include?(word[0]) && consonants.include?(word[1])
    translated_word = word[2..-1] + word[0..1] + "ay"
  elsif consonants.include?(word[0])
    translated_word = word[1..-1] + word[0] + "ay"
  end
  translated_word
end