class Pet
  attr_accessor :name

  def initialize(name)
    @name = name
    @life = 10 #жизнь
    @st_life = ""
    @hunger_indicator = 10 #показатель голода
    @hunger = ""
    @mood = 10 #настроенеие
    @moods = "" #настрения
    @sleep_rate = 10 #показатель сна
    @sleep = ""
    @toilet = 9
    @st_toilet = ""
    @sleeping = false
    p "#{name}"
  end

  def pet_inside
    p "-----------------------------------------------------------------------------"
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
      @hungry = "сыт)"
    when 4..7
      @hungry = "Вроде голоден, а вроде и нет."
    else
      @hungry = "Голодный!"
    end
    p "Питание (1-10) сейчас #{@hunger_indicator}. #{@hungry}"

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
    p "Настроение (1-10) сейчас #{@mood}. #{@smoods}"
    p "-----------------------------------------------------------------------------"
  end

  def feed #покормить
    @hunger_indicator += 8
    @mood += 3
    @sleep_rate -= 1
    @toilet -= 2
  end

  def play #поиграть
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate -= 1
    @toilet += 1
  end

  def walk #выгуливать
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate += 1
    @toilet += 2
  end

  def clean_up #убрать
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate -= 1
    @toilet -= 1
  end

  def put_to_bed #укладывать спать
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate += 3
    @toilet -= 1
  end

  def toss #подбрасывать
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate -= 1
    @toilet -= 1
  end

  def rock #укачивать
    @hunger_indicator -= 2
    @mood += 2
    @sleep_rate -= 1
    @toilet -= 1
  end

  def minus_day
    off_time
    pet_inside
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
pet = Pet.new("H")
pet.pet_inside
pet.minus_day
pet.minus_day
pet.minus_day