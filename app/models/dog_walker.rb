class DogWalker

  attr_reader :name
  attr_accessor :favorite_breed
  
  @@all = []

  def initialize(name, favorite_breed)
    @name = name
    @favorite_breed = favorite_breed

    @@all << self
  end

  # returns an array of all the walks given by the DogWalker
  def walks # ex: dw1.walks dogwalker_instance.walks
    # 1. find all walks
    # 2. iterate through them to select the ones that belong that dogwalker_instance (self)
    # 3. walk_instance.dog_walker == self
    Walk.all.select { |walk_instance| walk_instance.dog_walker == self }
  end

  # returns a unique array of all the dogs who been walked by the DogWalker
  def dogs # ex: dw4.dogs / dogwalker_instance.dogs
   dogs_array = self.walks.map { |walk_instance| walk_instance.dog }
   dogs_array.uniq
  end

  # creates a new Walk instance associated with this dog walker and the given dog
  def give_walk(length_in_minutes, dog) # ex: dw1.give_walk(15, d1)
    Walk.new(length_in_minutes, dog, self)
  end

  # returns an integer for the total length of all walks this dog walker has given
  def length_of_all_walks # ex: dw1.length_of_all_walks
    self.walks.sum { |walk_instance| walk_instance.length_in_minutes }
  end


  def self.all
    @@all
  end

  # should return an instance of DogWalker which has given the most walks
  def self.most_walks # ex: DogWalker.most_walks
    self.all.max_by { |dogwalker_instance| dogwalker_instance.length_of_all_walks }
  end


end # end of DogWalker class


