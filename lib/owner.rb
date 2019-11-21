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
    @pets = []
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
  def cats
    @pets.filter {|pet| pet.class== Cat}
  end
  def dogs
  end
  def buy_cat
  end
  def buy_dog
  end
  def walk_dogs
  end
  def feed_cats
  end
  def sell_pets
  end
  def list_pets
  end
end
