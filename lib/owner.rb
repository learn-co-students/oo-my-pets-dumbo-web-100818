require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  attr_writer

  @@owners = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @species = "human"
    @@owners << self
    @fishes= []
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.count
  end

  def self.all
    @@owners
  end

  def say_species
    return "I am a #{species}."
  end


  def buy_fish(fish_name)
    fish_name = Fish.new("#{fish_name}")
    @pets[:fishes] << fish_name
  end

  def buy_cat(cat_name)
    cat_name = Cat.new("#{cat_name}")
    @pets[:cats] << cat_name
  end

  def buy_dog(dog_name)
    dog_name = Dog.new("#{dog_name}")
    @pets[:dogs] << dog_name
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species, animals_name|
      animals_name.each do |mood| mood = "nervous"
      binding.pry
      end
      species.clear
    end

  end
end
