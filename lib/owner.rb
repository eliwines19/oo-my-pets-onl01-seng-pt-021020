class Owner
  @@all = []
  attr_accessor :pets
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
  end

  def say_species(species)
    puts "I am a #{species}"
  end

end
