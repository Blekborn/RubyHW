require_relative 'pet'
require_relative 'dog'
require_relative 'cat'
require_relative 'parrot'

class UiMenu < Pet

  def commands
    command = gets.chomp.downcase
  end
  def com_pet
    add_pet
    pet_inside
    p "Enter the command:"
    while true
      command = commands
      if command == 'feed'
        feed
      elsif command == 'play'
        play
      elsif command == 'walk'
        walk
      elsif command == 'clean_up'
        clean_up
      elsif command == 'put_to_bed'
        put_to_bed
      elsif command == 'toss'
        toss
      elsif command == 'rock'
        rock
      elsif command == 'day'
        minus_day
      elsif command == 'exit'
        exit
      else
        p "there is no such command #{command}"
      end
    end

  end


  def add_pet
    p "What will you name your pet?"
    name = gets.chomp
    p "Your pet's name #{name}!"
    p "Choose an animal: a parrot, a cat, a dog?"
    animal_name = gets.chomp
    if animal_name == "parrot"
      @pets = Parrot.new.parrot_pet
    elsif animal_name == "cat"
      @pets = Cat.new.cat_pet
    elsif animal_name == "dog"
      @pets = Dog.new.dog_pet
    else
      p "Chose the wrong animal!"
    end
    #p "животное = #{@pet.class}, его имя =  #{@pet.name}"
  end
end
UiMenu.new.com_pet