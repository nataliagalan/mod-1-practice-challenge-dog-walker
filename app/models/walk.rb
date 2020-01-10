class Walk
  attr_reader :length_in_minutes, :dog, :dog_walker

  @@all = []

  def initialize(length_in_minutes, dog, dog_walker)
    @length_in_minutes = length_in_minutes
    @dog = dog
    @dog_walker = dog_walker

    @@all << self
  end

  def happy_walker?
    self.dog_walker.favorite_breed == self.dog.breed
  end

  def print_details
    puts "#{self.dog_walker.name} walked #{self.dog.name} for #{self.length_in_minutes} minutes"
  end

  def self.all
    @@all
  end

end
