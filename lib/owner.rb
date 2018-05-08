require "pry"
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = [] 
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    @pets
  end 
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
end