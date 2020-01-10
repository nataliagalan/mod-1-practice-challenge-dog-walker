class DogWalker
  attr_reader :name
  attr_accessor :favorite_breed

  @@all = []

  def initialize(name, favorite_breed)
    @name = name
    @favorite_breed = favorite_breed
    @@all << self
  end

  def walks
    Walk.all.select do |walk|
      walk.dog_walker == self
    end
  end

  def dogs
    self.walks.map(&:dog).uniq
  end

  def give_walk(length_in_minutes, dog)
    Walk.new(length_in_minutes, dog, self)
  end

  def length_of_all_walks
    self.walks.sum(&:length_in_minutes)
  end

  def self.all
    @@all
  end

  def self.most_walks
    self.all.max_by do |dog_walker|
      dog_walker.walks.count
    end
  end

end
