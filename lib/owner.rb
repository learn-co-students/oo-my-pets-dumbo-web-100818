require "pry"
class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets, :owners, :dog
  @@owners=[]

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {:fishes => [], :dogs=>[], :cats=>[]}
  end

  def self.reset_all
    @@owners.clear
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each {|each_dog|  each_dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|each_cat| each_cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|each_fish| each_fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |animal, animal_array|
      animal_array.each { |each_animal| each_animal.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
