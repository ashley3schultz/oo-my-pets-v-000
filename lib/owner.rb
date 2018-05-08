class Owner
  attr_accessor :name
  attr_reader :species, :pets
  
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
  
  def buy_fish
    Fish.new()
    pets[fishes] << self
end