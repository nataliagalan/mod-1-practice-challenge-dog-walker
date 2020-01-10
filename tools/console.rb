# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


d1 = Dog.new("Fezzik", "Sheepdog", false)
d2 = Dog.new("Lucy", "Springer Spaniel", true)
d3 = Dog.new("Buddy", "German Shepherd", true)
d4 = Dog.new("Blaise", "Salugi", true)

dw1 = DogWalker.new("Ian", "Springer Spaniel")
dw2 = DogWalker.new("Lydia", "German Shepherd")

w1 = Walk.new(90, d1, dw1)
w2 = Walk.new(40, d2, dw1)
w3 = Walk.new(80, d3, dw1)
w4 = Walk.new(10, d3, dw2)
w5 = Walk.new(90, d4, dw2)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
