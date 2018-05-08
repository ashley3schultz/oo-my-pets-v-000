class Owner
  attr_accessor :name
  attr_reader :species, :pets
  
  @@all = [] 
  
  def initialize(species)
    @species = species
    @@all << self
  end 
  
  def pets 
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def self.reset_all 
    @@all.clear 
  end
  
  def self.count 
    @@all.size 
  end 
  
  def self.all
    @@all
  end 
  
  def say_species
    "I am a #{@species}."
  end
  
end