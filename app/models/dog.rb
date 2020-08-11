class Dog

  attr_reader :name, :breed
  attr_accessor :good_dog

  @@all = []

  def initialize(name, breed, good_dog)
    @name = name
    @breed = breed
    @good_dog = good_dog

    @@all << self
  end

  # returns an array of all the walks that the Dog has taken
  def walks
    Walk.all.select { |walk_instance| walk_instance.dog == self }
  end

  # returns a unique array of all the dog walkers that the Dog received walks from
  def dog_walkers # ex: dog_instance.dog_walkers
    dog_walkers_array = self.walks.map { |walk_instance| walk_instance.dog_walker }
    dog_walkers_array.uniq
  end

  #creates a new Walk instance associated with this dog and the given dog walker
  def take_walk(length_in_minutes, dog_walker)
    Walk.new(length_in_minutes, self, dog_walker)
  end

  def print_walk_details # ex: dog_instance.print_walk_details / d1.print_walk_details
    self.walks.each { |walk_instance|  
    walk_instance.print_details
  }
  end

  def self.all
    @@all
  end

  # returns an array of all dog instances whose are good dogs
  def self.good_dogs
    self.all.select { |dog_instance| dog_instance.good_dog == true  }
  end

end # end of Dog class


