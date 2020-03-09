class Owner
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
  end


end
