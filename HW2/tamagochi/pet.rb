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
    help_table
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
          day - прошел день;
          rock - укачивать."
    puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++"
  end

  private

  def off_time
    @life -= 1
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

    @life = (@life + @hunger_indicator + @mood + @sleep_rate + @toilet) / 5
    if @life <= 1
      p "GAME OVER!"
      exit
    end
  end
end
