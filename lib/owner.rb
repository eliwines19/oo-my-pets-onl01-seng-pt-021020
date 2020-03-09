class Owner
  @@all = []
  attr_accessor :pets
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {dogs: => [], cats: => []}
  end


  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
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
