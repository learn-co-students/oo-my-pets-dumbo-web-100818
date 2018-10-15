require 'pry'
class Owner
  # code goes here

  attr_accessor :pets, :name
  attr_reader :species
  @@people = []
  def initialize (species)
    @species = species
    @@people << self
    @pets = {:fishes => [], :cats => [], :dogs => []}

  end

# binding.pry
  def self.all
    @@people
  end

  def self.count
    @@people.count
  end

  def self.reset_all
    @@people = []
  end


  def say_species
    "I am a #{@species}."
    # binding.pry
  end

  def pets
    @pets
  end

  def buy_fish (name)
    pets[:fishes] << Fish.new(name)
    binding.pry
    0
  end

  def buy_cat (name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog (name)

    pets[:dogs] << Dog.new(name)
  end





end
