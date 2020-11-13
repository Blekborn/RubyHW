class Pet
  attr_accessor :name

  def initialize
    @name = name
    @life = 10
    @st_life = ""
    @hunger_indicator = 10
    @hunger = ""
    @mood = 10
    @moods = ""
    @sleep_rate = 10
    @sleep = ""
    @toilet = 9
    @st_toilet = ""
    @sleeping = false
    name = gets.chomp
  end

  def pet_inside
    p "Сосотояние #{name}:"
    case @life
    when 8..10
      @st_life = "Превосходное здоровье!"
    when 4..7
      @st_life = "Нормальное здоровье"
    else
      @st_life = "Спасай, я скоро умру("
    end
    p "Здоровье (1-10) сейчас #{@life}. #{@st_life}"

    case @hunger_indicator
    when 8..10
      @hunger = "сыт)"
    when 4..7
      @hunger = "Вроде голоден, а вроде и нет."
    else
      @hunger = "Голодный!"
    end
    p "Питание (1-10) сейчас #{@hunger_indicator}. #{@hunger}"

    case @sleep_rate
    when 8..10
      @sleep = "Я бодр)"
    when 4..7
      @sleep = "Нормально или слабо возбужденный."
    else
      @sleep = "Увижу подушку, отключусь."
    end
    p "Энергия (1-10) сейчас #{@sleep_rate}. #{@sleep}"

    case @toilet
    when 8..10
      @st_toilet = "Не хочу в туалет."
    when 4..7
      @st_toilet = "Скоро схожу, но время ещё есть."
    else
      @st_toilet = "Пулей в туалет."
    end
    p "Туалет (1-10) сейчас #{@toilet}. #{@st_toilet}"

    case @mood
    when 8..10
      @moods = "Чудесное настроение."
    when 4..7
      @moods = "Средний настрой."
    else
      @moods = "Я в гневе."
    end
    p "Настроение (1-10) сейчас #{@mood}. #{@moods}"
    com_pet
  end


  def feed
    @life += 2
    @hunger_indicator += 8
    @mood += 3
    @sleep_rate -= 1
    @toilet -= 2
    off_time
    pet_inside
  end

  def play
    @life -= 1
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate -= 1
    @toilet += 1
    off_time
    pet_inside
  end

  def walk
    @life += 1
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate += 1
    @toilet += 2
    off_time
    pet_inside
  end

  def clean_up
    @life += 2
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate -= 1
    @toilet += 3
    off_time
    pet_inside
  end

  def put_to_bed
    @life -= 1
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate += 3
    @toilet -= 1
    off_time
    pet_inside
  end

  def toss
    @life += 1
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate -= 1
    @toilet -= 1
    off_time
    pet_inside
  end

  def rock
    @life += 2
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate -= 1
    @toilet -= 1
    off_time
    pet_inside
  end

  def commands

    command = gets.chomp.downcase
  end

  def com_pet
    help_table
    p "Введите комманду:"
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
    elsif command == 'exit'
      exit
    else
      p "нет такой команды #{command}"

    end
  end

  def minus_day
    off_time
    pet_inside
  end

  def help_table
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++"
    puts "pet_inside - выводит все важные состояния персонажа;
feed - покормить;
play - поиграть;
walk - выгуливать;
clean_up - убрать;
put_to_bed - укладывать спать;
toss - подбрасывать;
rock - укачивать."
    puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++"
  end


  private

  def off_time
    @hunger_indicator -= 1
    @mood -= 1
    @sleep_rate -= 1
    @toilet -= 1

    if @hunger_indicator > 10
      @hunger_indicator = 10
    elsif @hunger_indicator <= 0
      @hunger_indicator = 1
    end

    if @mood > 10
      @mood = 10
    elsif @mood <= 0
      @mood = 1
    end

    if @sleep_rate > 10
      @sleep_rate = 10
    elsif @sleep_rate <= 0
      @sleep_rate = 1
    end

    if @toilet > 10
      @toilet = 10
    elsif @toilet <= 0
      @toilet = 1
    end

    @life = (@hunger_indicator + @mood + @sleep_rate + @toilet) / 4
    if @life <= 1
      p "GAME OVER!"
      exit
    end
  end
end
Pet.new.pet_inside

# def add_pet
#   p "Как назовешь питомца?"
#   name = gets.chomp
#   p "Имя твоего питомца #{name}!"
#   p "Выбирите жывотное: попугай, кот, собака?"
#   animal_name = gets.chomp
#   if animal_name == "попугай"
#     @pet = Parrot.new(name)
#   elsif animal_name == "кот"
#     @pet = Cat.new(name)
#   elsif animal_name == "собака"
#     p "ok"
#     #@pet = Dog.new(name)
#   else
#     p "Не того выбрал животного!"
#   end
#   p "животное = #{@pet.class}, его имя =  #{@pet.name}"
# end
