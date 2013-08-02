class Temperature
  # construct options hash in fahrenheit. 
  # if the input is in degrees celsius,
  # then convert it to degrees fahrenheit
  #
  def initialize(opts = nil)
    if opts != nil
      if opts[:f]
        @fahrenheit = opts[:f]
      else
        @fahrenheit = (opts[:c] * (9.0/5.0))  + 32
      end
    end
  end
  # returns the temperature in degrees fahrenheit
  #
  def in_fahrenheit
     @fahrenheit
  end
  # returns the temperature in degrees celsius
  #
  def in_celsius
    (@fahrenheit - 32) * (5.0/9.0)
  end
  # factory method in degrees celsius
  #
  def self.from_celsius(temp)
    celsius = {:c => temp}
    new(celsius)
  end
  # factory method in degrees fahrenheit
  #
  def self.from_fahrenheit(temp)
    fahrenheit = {:f => temp}
    new(fahrenheit)
  end
end

# Celsius subclass 
#
class Celsius < Temperature
  def initialize(celsius_temp)
    @celsius = {:c => celsius_temp}
    super(@celsius)
  end
end

# Fahrenheit subclass
#
class Fahrenheit < Temperature
  def initialize(fahrenheit_temp)
    @fahrenheit = {:f => fahrenheit_temp}
    super(@fahrenheit)
  end
end