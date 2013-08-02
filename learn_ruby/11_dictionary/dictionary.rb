class Dictionary
  # dictionary hash is empty when created
  #
  def initialize
    @dict = {}
  end
  # returns all key/value pairs in the dictionary
  #
  def entries
    @dict
  end
  # adds a new entry to the dictionary as either a 
  # key or a key/value pair
  #
  def add(entry)
    if entry.is_a?(Hash)
      entry.map { |key, value| @dict[key] = value }
    elsif entry.is_a?(String)
      @dict[entry] = nil
    end
  end
  # returns the keys in the dictionary 
  # in alphabetical order
  #
  def keywords
    @dict.keys.sort
  end
  # checks if a given key is in the dictionary
  #
  def include?(key)
    if @dict.include?(key)
      return true
    else
      return false
    end
  end
  # finds a key using an entry, which can be 
  # an entire word or a prefix
  #
  def find(entry)
    found = {}
    @dict.map do |key, value| 
      if key.start_with?(entry)
        found[key] = value
      end
    end
    found
  end
  # prints the dictionary in a string format
  #
  def printable
    dict_string = ""
    self.keywords.each do |keys|
      dict_string += "[#{keys}] \"#{@dict[keys]}\"\n"
    end
    dict_string.chomp
  end
end