# Exercise 6
#
# Write a method called convert that takes one argument which is a temperature
#
# doctest: Write a method called convert that takes one argument
# >> convert(-40)
# => -40
# >> convert(212)
# => 100
# doctest: body temperature
# >> convert 98.6
# => 37
# doctest: close to body temperature should not be 37
# >> convert(99).to_s[/37.222222/]
# => "37.222222"
#
# in degrees Fahrenheit. This method should return the temperature in degrees
# Celsius.
# doctest: format to 2 decimal places
# >> report -40
# => "-40.00"
# To format the output to say 2 decimal places, we can use the Kernel's format
# method. For example, if x = 45.5678 then format("%.2f", x) will return the
# string 45.57. Another way is to use the round function as follows:
# Your formula here...

# Celsius = Fahrenheit * 9 / 5 + 32
# 100 degrees C = 212 degrees F

# You must pass a number to this method
def f_to_c(fahrenheit)
  (Float(fahrenheit) - 32) * 5 / 9
end

def report(fahrenheit_temperature)
  format('%.2f', f_to_c(fahrenheit_temperature))
end
alias convert f_to_c

if __FILE__ == $PROGRAM_NAME
  puts 'Welcome to my temperature conversion program.'
  puts 'What temperature would you like to convert?  Any temperature at all!'
  print 'As long as it is in Farhenheit '
  temp_in_f = gets.to_f
  puts "The temperature that you gave me converts to #{report(temp_in_f)}C."
end

#   Lambda construction that we call 'stabby' due to the sword looking symbol.
#   A Proc is a class that holds "procedures", hence "Proc" for short.
#   We generally refer to "lambda" with a lower case name, because there is
#   no "lambda" class, but there is a "Proc" class.  A lambda is a special
#   Proc object.  It checks for arity and it returns from a method call
#   differently than a Proc.
# doctest: When someone presses enter in our program we get -17.78
# >> -> { begin ; report("") ; rescue ArgumentError => e  ; e.class ; end }.call
# => ArgumentError
