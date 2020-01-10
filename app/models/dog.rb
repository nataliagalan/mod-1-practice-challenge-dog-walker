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

  def walks
    Walk.all.select do |walk|
      walk.dog == self
    end
  end

  def dog_walkers
    self.walks.map(&:dog_walker).uniq
  end

  def take_walk(length_in_minutes, dog_walker)
    Walk.new(length_in_minutes, self, dog_walker)
  end

  def print_walk_details
    self.walks.each do |walk|
      walk.print_details
    end
  end

  def self.all
    @@all
  end

  def self.good_dogs
    self.all.select do |dog|
      dog.good_dog
    end
  end

end
