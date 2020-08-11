# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# SEED DATA below
# DOGWALKER INSTANCES name, favorite_breed
dw1 = DogWalker.new('Bruce', 'basset hound')
dw2 = DogWalker.new('Matilda', 'poodle') 
dw3 = DogWalker.new('Michele', 'labradoodle') 
dw4 = DogWalker.new('Annie', 'beagle') 
 
# DOG INSTANCES name, breed, good_dog
d1 = Dog.new('Charlie', 'basset hound', true)
d2 = Dog.new('Firulais', 'poodle', true)
d3 = Dog.new('Bo', 'pitbull', true)
d4 = Dog.new('Killer', 'labradoodle', true)

# WALK INSTANCES length_in_minutes, dog, dog_walker
w1 = Walk.new(30, d1, dw4)
w2 = Walk.new(45, d2, dw2)
w3 = Walk.new(15, d2, dw4)
w4 = Walk.new(30, d3, dw4)
w5 = Walk.new(15, d3, dw4)


# NOTES
# Dog -< Walk >- DogWalker
# Walk is the joiner class

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
