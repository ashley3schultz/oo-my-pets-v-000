class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = [] 
  
  def initialize(species)
    @species = species
    @@all << self
  end 
  
#Class Methods
  def self.reset_all 
    @@all.clear 
  end
  
  def self.count 
    @@all.size 
  end 
  
  def self.all
    @@all
  end 
  
#Instance Methods
  def say_species
    "I am a #{@species}."
  end
  
  def pets 
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    new_fish.owner = self
    pets[:fishes] << new_fish
  end
end