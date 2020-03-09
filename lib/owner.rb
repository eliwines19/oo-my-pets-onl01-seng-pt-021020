class Owner
  @@all = []
  attr_accessor :pets
  #pets can be changed
  attr_reader :name, :species
  #owner name and species cannot be changed

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  #initializes with a name, and species set to human
  #owner name is shoveled into the all class variable array

  def cats
    Cat.all.select {|cat| cat.owner == self }
  end
  #returns a collection of all the cats that belong to the owner

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  #returns a collection of all the dogs that belong to the owner

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end
  #creates another cat that was "bought" that now belongs to the owner

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end
  #creates another dog that was "bought" that now belongs to the owner

  def walk_dogs
    Dog.all.each {|dog| dog.mood = "happy" if dog.owner == self}
  end
  #this method "walks the dogs" and changes their mood to happy

  def feed_cats
    Cat.all.each {|cat| cat.mood = "happy" if cat.owner == self}
  end
  #this method "feeds the cats" and changes their mood to happy

  def sell_pets
    Dog.all.each do |dog|
      if dog.owner == self
        dog.mood = "nervous"
        dog.owner = nil
      end
    end

    Cat.all.each do |cat|
      if cat.owner == self
        cat.mood = "nervous"
        cat.owner = nil
      end
    end
  end
  #This method allows you to sell either the cats or the dogs and changes their mood back to nervous and owner to nil(no owner)

  def list_pets
    return "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end
  #This method lists the amount of pets the owner currently has

  def say_species
    return "I am a #{@species}."
  end
  #This method will say the owners species

  def self.all
    @@all
  end
  #returns all instances of Owner that have been created

  def self.count
    @@all.size
  end
  #returns the number of owners that have been created

  def self.reset_all
    @@all.clear
  end
  #resets the owners that have been created 

end
