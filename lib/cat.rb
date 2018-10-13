class Cat
  # code goes here
  attr_reader :species, :name
  attr_accessor :mood
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end


end
