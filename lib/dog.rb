class Dog
  @@all = []
  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  #initializes the instance of a dog being created by giving it a name and owner, a set mood of nervous and pushes the dog to the
  #all class variable array

  def self.all
    @@all
  end
  #returns the instances of dogs that have been created 

end
