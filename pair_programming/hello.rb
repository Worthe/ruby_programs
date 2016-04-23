# doctest: I can greet the world
# This is just a comment so I can legitimately write what I want
# and the tests are not disrupted
# >> hello
# I wish when I called 'hello' it would do this:
# => "Hello World!"
# doctest: Greet someone personally
# >> hello("George")
# => "Hello George!"
# doctest: I can greet someone else
# >> hello("Audi")
# => "Hello Audi!"
# doctest: I can ask if someone is there
# >> hello('Joe', '?')
# => "Hello Joe?"
def hello(name = 'World', punctuation = '!')
  "Hello #{name}#{punctuation}"
end
