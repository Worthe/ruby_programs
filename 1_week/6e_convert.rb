# Celsius = Fahrenheit * 9 / 5 + 32
# 100 degrees C = 212 degrees F

def f_to_c(f)
  c = (f - 32) * 5 / 9
  puts "The temperature in Celsius is #{c}"
  puts "to 2 decimal places"
end

f_to_c(212)
