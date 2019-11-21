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
    return @@owners
  end
  def self.count
    return @@owners.count
  end
  def self.reset_all
    @@owners.clear
  end
  def cats
    return @pets.filter {|pet| pet.class== Cat}
  end
  def dogs
    return @pets.filter {|pet| pet.class== Dog}
  end
  def buy_cat(name)
    return Cat.new(name, self)
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
