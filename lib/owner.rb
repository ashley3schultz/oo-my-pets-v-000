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
    @pets[:dogs].each {|dog|  dog.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each {|cat|  cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].each {|fish|  fish.mood = "happy"}
  end
  
  def sell_pets
    @pets.keys.clear
    @pets.keys.each {|pt| pt.each {|pet| pet.mood = "nervous"
      #binding.pry
  end
end