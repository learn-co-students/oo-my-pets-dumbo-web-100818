class Owner
  attr_reader :name, :species, :pets
  attr_writer :name, :pets
  # attr_reader: :species
  @@owners = []
  def initialize(species)
    @species = species
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  #need to define for class methods

  def self.all #class method starts with self. When we have ANY class variable we need a class method(getter method)
    @@owners
  end       #class variable (@@) needs class methods (self.)

  def self.count
    @@owners.count
  end

  def self.reset_all #CLASS MEDTHOD: Owner.rest_all.
    @@owners = [] #.clear #array method?
  end



  def say_species  #INSTANCE METHOD: if you need functions. instance variable we need instance METHODs to access
    return "I am a #{@species}." #instance variables requires getter and setter for access
  end

  # def name  #if attr_reader, then don't need this getter method
  #   @name
  # end

  # def pets  #if attr_reader, then don't need this getter method
  #   @pets
  # end

  def buy_fish(name)
    @pets[:fishes]  <<  Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats]  <<  Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs]  <<  Dog.new(name)
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
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
      @pets[key].clear
    end
  end

  def list_pets
    @pets.each do |type, pet_array|
      print "#{pet_array.count} #{type}, "
    end
  end
end

#
#expect(owner.list_pets).to eq("I have 2 fish, 3 dog(s), and 1 cat(s).")
