class Owner
  attr_accessor :owner, :pets
  attr_writer
  attr_reader :name, :species
  @@owners = []
  def initialize(name)
    @name = name
    @species = "human"
    @owner = self
    @@owners << self
    pets = []
  end
  def say_species
    "I am a #{@species}."
  end
  def self.all
    @@owners
  end
  def self.count
    @@owners.count
  end
  def self.reset_all
    @@owners.clear
  end

end
