class Owner
  attr_accessor
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
    puts "I am #{@species}."
  end
  def self.all
    @@owners
  end
  def self.count
    @@owner.all.count
  end
  def self.reset_all
    @@owners.all.clear
  end

end
