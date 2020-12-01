# frozen_string_literal: true
require 'erb'
require 'rack'
require_relative '../app/lib/setting'
# Some documentation for Pet
class Pet
  include Setting

  def self.call(env)
    new(env).response.finish
  end

  def initialize(env)
    @request = Rack::Request.new(env)
    @animal_name = ''
    @life = 10
    @st_life = ''
    @hunger_indicator = 10
    @hunger = ''
    @mood = 10
    @moods = ''
    @sleep_rate = 10
    @sleep = ''
    @toilet = 9
    @st_toilet = ''
    @sleeping = false
    @emoji = ''
  end

  def response
    case @request.path
    when '/'
      Rack::Response.new(render('login.html.erb'))

    when '/options'
      Rack::Response.new do |response|
        response.set_cookie('life', @life)
        response.set_cookie('hunger_indicator', @hunger_indicator)
        response.set_cookie('mood', @mood)
        response.set_cookie('sleep_rate', @sleep_rate)
        response.set_cookie('toilet', @toilet)
        response.set_cookie('name', @request.params['name'])
        response.redirect('/start')
      end

    when '/exit'
      Rack::Response.new('G Over', 404)
      Rack::Response.new(render('game_over.html.erb'))

    when '/start'
      if get('life') <= 0 || get('hunger_indicator') <= 0 || get('mood') <= 0 || get('sleep_rate') <= 0 || get('toilet') <= 0
        Rack::Response.new('Game Over', 404)
        Rack::Response.new(render('game_over.html.erb'))
      else
        Rack::Response.new(render('index.html.erb'))
      end
    when '/options_pet'
      return Setting.options_params(@request, 'life') if @request.params['life']
      return Setting.options_params(@request, 'hunger_indicator') if @request.params['hunger_indicator']
      return Setting.options_params(@request, 'mood') if @request.params['mood']
      return Setting.options_params(@request, 'sleep_rate') if @request.params['sleep_rate']
      return Setting.options_params(@request, 'toilet') if @request.params['toilet']
    else
      Rack::Response.new('Not Found', 404)
    end
  end

  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end

  def name
    name = @request.cookies['name'].delete(' ')
    name.empty? ? 'Pet' : @request.cookies['name']
  end

  def get(attr)
    @request.cookies["#{attr}"].to_i
  end
end
