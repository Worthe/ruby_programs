# Write a method called convert that takes one argument which is a temperature
# in degrees Fahrenheit. This method should return the temperature in degrees
# Celsius.
# doctest: convert 212F to 100C
# >> convert(212)
# => 100.00
#
# doctest: convert -40F to -40
# >> convert(-40)
# => -40
#
# doctest: convert 98.6F to 37C
# >> convert(98.6)
# => 37.00
#
# doctest: convert 98F to 36.67C
# >> convert(98).round(6)
# => 36.666667
#
# To format the output to say 2 decimal places, we can use the Kernel's format
# method. For example, if x = 45.5678 then format("%.2f", x) will return the
# string 45.57. Another way is to use the round function as follows:

# Celsius = Fahrenheit * 9 / 5 + 32
# 100 degrees C = 212 degrees F

def convert(f)
  (f.to_f - 32) * 5/9
end

if __FILE__ == $PROGRAM_NAME
  puts format('%.2f', convert(-40))
end
