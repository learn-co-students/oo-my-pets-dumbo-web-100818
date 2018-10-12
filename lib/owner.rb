require 'pry'
class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats =>[]}
    @@all << self
  end

  def self.reset_all
    self.all.clear
  end

  def self.all
   @@all
 end

 def self.count
   self.all.count
 end

 def self.reset
   self.all.clear
 end

 def say_species
   "I am a #{self.species}."
 end

def buy_fish (new_fish)
  new_fish = Fish.new(new_fish)
  self.pets[:fishes] << new_fish
end

def buy_cat (new_cat)
  new_cat = Cat.new(new_cat)
  self.pets[:cats] << new_cat
end

def buy_dog (new_dog)
  new_dog = Dog.new(new_dog)
  self.pets[:dogs] << new_dog
end

def walk_dogs
  self.pets[:dogs].each do |dog|
    dog.mood = 'happy'
  end
end

def play_with_cats
  self.pets[:cats].each do |cat|
    cat.mood = 'happy'
  end
end

def feed_fish
  self.pets[:fishes].each do |fish|
    fish.mood = 'happy'
  end
end

def sell_pets
    self.pets.each do |pet_key, petpet|
      petpet.each do |pet|
        pet.mood = 'nervous'
      end
      petpet.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end






end
