class Dog
  attr_reader :name, :breed
  attr_accessor :good_boy

  @@all = []

  def initialize(name, breed, good_boy)
    @name = name
    @breed = breed
    @good_boy = good_boy

    @@all << self
  end

  def self.all
    @@all
  end

end
