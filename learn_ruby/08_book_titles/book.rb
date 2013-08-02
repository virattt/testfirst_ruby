class Book
  # converts old title to a new title that capitalizes
  # all words in title except for "small words"
  #
  def title=(old_title)
    words_list = old_title.split(' ')
    exception_words = ["the", "and", "a", "in", "an", "of"] 

    words_list.each do |word|
      
      if exception_words.include?(word)
        word.downcase!
      else
        word.capitalize!
      end
    end
    words_list.first.capitalize!
    @book_title = words_list.join(" ")
  end
  
  def title
    @book_title
  end
end