# This method converts Fahrenheit to Celsius
#
def ftoc(fahrenheit)
  celsius = (fahrenheit - 32) * (5.0/9.0)
end
# This method converts Celsius to Fahrenheit
#
def ctof(celsius)
  fahrenheit = (celsius * (9.0/5.0))  + 32
end