class Owner
  attr_reader :owner
  attr_writer :owner, :species
  # attr_reader: :species
  @@owners = []
  def initialize(owner)
    @owner = owner
    @species
    @@owners << self
  end

  def species
    @species
  end



end
