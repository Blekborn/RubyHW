class Pet
  def initialize(name)
    @name = name
    p @name + " родился!"
  end
end
pet = Pet.new('Dima')