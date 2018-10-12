require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  # @@count = @@all.length

  def initialize(name)
  @name = name
  @species = "human"
  @pets = {
    fishes: [],
    dogs: [],
    cats: []
  }
  @@count =+ 1
  @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{species}."
  end


  def buy_fish(fish)

    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
def play_with_cats
  pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  pets[:fishes].each do |fish|
    fish.mood = "happy"
end
end

def sell_pets
pets[:dogs].each do |dog|
  dog.mood = "nervous"
end
pets[:cats].each do |cat|
  cat.mood = "nervous"
end
pets[:fishes].each do |fish|
  fish.mood = "nervous"
end
pets.clear
end

def list_pets
  "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
end
  def self.reset_all
    @@all.clear
    # @@count = 0
  end

  def self.count
    # @@count
    all.count
  end
end
