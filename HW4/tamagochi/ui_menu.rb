require_relative 'pet'
require_relative 'dog'
require_relative 'cat'
require_relative 'parrot'
require 'tama'

class UiMenu < Pet

  def commands
    command = gets.chomp.downcase
  end

  def com_pet
    add_pet
    pet_inside
    HtmlTama.new.open_html
    p "Enter the command:"
    while true
      command = commands
      if command == 'feed'
        @pet.feed
        htmls
      elsif command == 'play'
        @pet.play
        htmls
      elsif command == 'walk'
        @pet.walk
        htmls
      elsif command == 'clean_up'
        @pet.clean_up
        htmls
      elsif command == 'put_to_bed'
        @pet.put_to_bed
        htmls
      elsif command == 'toss'
        @pet.toss
        htmls
      elsif command == 'rock'
        @pet.rock
        htmls
      elsif command == 'day'
        @pet.minus_day
        htmls
      elsif command == 'exit'
        exit
      else
        p "there is no such command #{command}"
      end
    end
  end

  def add_pet
    @pet = Pet.new
    p "What will you name your pet?"
    @pet.name = gets.chomp
    p "Your pet's name #{name}!"
    p "Choose an animal: a parrot, a cat, a dog?"
    @pet.animal_name = gets.chomp
    if @pet.animal_name == "parrot"
      @pets = Parrot.new.parrot_pet
    elsif @pet.animal_name == "cat"
      @pets = Cat.new.cat_pet
    elsif @pet.animal_name == "dog"
      @pets = Dog.new.dog_pet
    else
      p "Chose the wrong animal!"
    end
    htmls
  end

  def htmls(filename = 'index.html')
    content = "
  <span class='name_pet'>Сосотояние #{@pet.name}:</span>
  <span class='breed'> #{@pet.animal_name}</span>
  <span> #{@pets}</span>
  <ul class='health_status'>
      <li>
          <p>Здоровье (1-10) сейчас #{@pet.life}. #{@pet.st_life}</p>
      </li>
      <li>
          <p>Питание (1-10) сейчас #{@pet.hunger_indicator}. #{@pet.hunger}</p>
      </li>
      <li>
          <p>Энергия (1-10) сейчас #{@pet.sleep_rate}. #{@pet.sleep}</p>
      </li>
      <li>
          <p>Туалет (1-10) сейчас #{@pet.toilet}. #{@pet.st_toilet}</p>
      </li>
      <li>
          <p>Настроение (1-10) сейчас #{@pet.mood}. #{@pet.moods}</p>
      </li>
  </ul>
  <ul class='commands'>
      <li>Команды:</li>
      <li>feed - покормить</li>
      <li>play - поиграть</li>
      <li>walk - выгуливать</li>
      <li>clean_up - убрать</li>
      <li>put_to_bed - укладывать спать</li>
      <li>toss - подбрасывать</li>
      <li>day - прошел день</li>
      <li>rock - укачивать</li>
  </ul>
"
    HtmlTama.new.create_html(content, true, filename)
  end
end
#UiMenu.new.com_pet