class Owner
  @@all = []
  attr_accessor :pets, :dogs, :cats
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @dogs = []
    @cats = []
  end

  def add_dog
    @dogs << Dog.new 
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

end
