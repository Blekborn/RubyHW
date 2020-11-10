require_relative 'pet'
require_relative 'parrot'
require_relative 'cat'
require_relative 'dog'

class Tama
  def add_pet
    p "Как назовешь питомца?"
    name = gets.chomp
    p "Имя твоего питомца #{name}!"
    p "Выбирите жывотное: попугай, кот, собака?"
    animal_name = gets.chomp
    if animal_name == "попугай"
      @pet = Parrot.new(name)
    elsif animal_name == "кот"
      @pet = Cat.new(name)
    elsif animal_name == "собака"
      @pet = Dog.new(name)
    else
      p "Не того выбрал животного!"
    end
    p "животное = #{@pet.class}, его имя =  #{@pet.name}"
  end
end
Tama.new.add_pet