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
    new_pet = Fish.new(name)
    @pets[:fishes] << new_pet
  end
  
  def buy_cat(name)
    new_pet = Cat.new(name)
    @pets[:cats] << new_pet
  end
  
  def buy_dog(name)
    new_pet = Dog.new(name)
    @pets[:dogs] << new_pet
  end
  
  def walk_dogs
    self.pets.dogs.mood = "happy"
  end
end