class Fish
  attr_accessor :mood #can change it's mood
  attr_reader :name    #can't change its name
  def initialize(name)
    @name = name
    @mood = 'nervous'
  # # code goes here
  end




end
