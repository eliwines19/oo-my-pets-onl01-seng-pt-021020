class Owner
  attr_reader :name

  def initialize(name, species = "human")
    @name = name
  end
end
