require "pry"

class Owner
  @@owner = []
  attr_reader :species
  attr_accessor :pets, :name


  def self.all
    @@owner
  end

  def self.reset_all
    @@owner = []
  end

  def self.count
    @@owner.length
  end

  def initialize(species)
    @species = species
    @pets = {fishes:[], cats:[], dogs:[]}
    @@owner << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    @pets[:fishes]<<Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats]<<Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs]<<Dog.new(name)
  end

  def walk_dogs
    # binding.pry
    self.pets[:dogs].each do |each_dog|
      each_dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |each_cat|
      each_cat.mood ="happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |each_fish|
      each_fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      self.pets[type] = []
    end
  end

  def list_pets
    fishies = self.pets[:fishes].length
    doggies = self.pets[:dogs].length
    kitties = self.pets[:cats].length
    # self.pets.each do |type, pets|
    #   if type == :fishes
    #     fishies = pets.length
    #   elsif type == :dogs
    #     doggies = pets.length
    #   else
    #     kittes = pets.length
    #   end
    # end
    "I have #{fishies} fish, #{doggies} dog(s), and #{kitties} cat(s)."
  end

end
