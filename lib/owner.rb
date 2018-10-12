require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}

  end

  def Owner.all
    @@all
  end

  def Owner.count
    @@all.count
  end

  def Owner.reset_all
    @@all.clear
  end

  def say_species
    if self.species
      return "I am a #{name}."
    end
  end


  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
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
    @pets.each do |species, pet|
      pet.each do |name|
        name.mood = "nervous"
      end
    end
    @pets.clear
  end

 def list_pets
   "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
 end

end
