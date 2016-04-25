# doctest: first answer is true
# => true
# doctest: second answer is true
# => true
# doctest: third answer is false
# => false
# Not got the hang of dectest yet


y = false
z = true
x = y or z
puts x
(x = y) or z
puts x
x = (y or z)
puts x
