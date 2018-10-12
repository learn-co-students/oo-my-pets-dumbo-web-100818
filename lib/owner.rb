require 'pry'
class Owner

  @@all = []
  @@count = 0

  attr_reader :species
  attr_accessor :name, :pets

  def initialize (species)
    @species = species
    @@all.push(self)
    @@count+=1
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def buy_fish (name)
    new_fish = Fish.new(name)
    @pets[:fishes].push(new_fish)
  end

  def buy_cat (name)
    new_cat = Cat.new(name)
    @pets[:cats].push(new_cat)
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs].push(new_dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |key, animal|
      animal.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets[:fishes].clear
    @pets[:dogs].clear
    @pets[:cats].clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
