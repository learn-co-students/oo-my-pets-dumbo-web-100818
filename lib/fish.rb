class Fish
  # code goes here
  attr_reader :species, :name, :owner
  attr_accessor :mood
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end
