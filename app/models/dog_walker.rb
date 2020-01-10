class DogWalker
  attr_reader :name
  attr_accessor :favorite_breed

  @@all = []

  def initialize(name, favorite_breed)
    @name = name
    @favorite_breed = favorite_breed

    @@all << self
  end

  def self.all
    @@all
  end

end
