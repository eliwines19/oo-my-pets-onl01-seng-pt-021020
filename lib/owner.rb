class Owner
  @@all = []
  attr_accessor :pets
  attr_reader :name, :species

  def initialize(name)
    @name = name

  end


end
