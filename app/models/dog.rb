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

  def self.all
    @@all
  end

end
