# Write a Ruby program that displays how old I am, if I am 979000000 seconds
# old.

# Display the result as a floating point (decimal) number to two decimal
# places (for example, 17.23).
#
# Note: To format the output to say 2 decimal places, we can use the Kernel's
# format method. For example, if x = 45.5678 then format("%.2f", x) will return
# the string 45.57

# doctest: In years, how old are you if you are x seconds old
# >> seconds_to_years(0)
# => 0
# doctest: seconds in a year
# >> seconds_to_years(31536000)
# => 1
# doctest: 9.79e8 is 31.04 years old
# >> seconds_to_years(9.79e8).round(2)
# => 31.04

def seconds_to_years(seconds)
  seconds.to_f / 60 / 60 / 24 / 365
end

if __FILE__ == $PROGRAM_NAME
  ages_in_seconds = [979_000_000, 1_544_832_000]
  ages_in_seconds.each do |age|
    puts format '%d seconds is %.2f years.', age, seconds_to_years(a)
  end
end
