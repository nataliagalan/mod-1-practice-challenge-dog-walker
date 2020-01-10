class Walk
  attr_reader :length_in_minutes, :dog, :dog_walker

  @@all = []

  def initialize(length_in_minutes, dog, dog_walker)
    @length_in_minutes = length_in_minutes
    @dog = dog
    @dog_walker = dog_walker

    @@all << self
  end

  def self.all
    @@all
  end

end
