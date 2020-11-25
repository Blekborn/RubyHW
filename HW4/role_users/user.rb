# frozen_string_literal: true
require 'yaml'

class User
  # Some documentation for User
  attr_accessor :user_login #, :password_user

  def initialize(*user_login)
    @user_login = user_login
    #@password_user = password_user
  end

  SUPER_ADMIN = { 'login' => 'superadmin', 'password' => '1111' }.freeze
  ADMIN = { 'login' => 'admin', 'password' => '2222' }.freeze


  def users_login
    in_user
    if @user_login == SUPER_ADMIN['login'] && @password_user == SUPER_ADMIN['password']
      p "Здравствуйте #{@user_login}"
      File.open('info.yml', 'w') { |file| file.write(SUPER_ADMIN.to_yaml) }
    elsif @user_login == ADMIN['login'] && @password_user == ADMIN['password']
      p "Здравствуйте #{@user_login}"
      File.open('info.yml', 'w') { |file| file.write(ADMIN.to_yaml) }
    elsif @user_login == '' && @password_user == ''
      in_user
    else
      p "Здравствуйте #{@user_login}"
      File.open('info.yml', 'w') { |file| file.write(ADMIN.to_yaml) }
    end
  end

  def in_user
    p 'Введите логин!'
    p 'superadmin, admin and guest'
    @user_login = gets.chomp.downcase
    p 'password:'
    @password_user = gets.chomp
  end
end
User.new.users_login

# recipe_from_yaml_file = YAML.load(File.read("info.yml"))
# p recipe_from_yaml_file
