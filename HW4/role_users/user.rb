# frozen_string_literal: true
require 'yaml'

class User
  # Some documentation for User
  attr_accessor :user_login

  def initialize(*user_login)
    @user_login = user_login
  end

  SUPER_ADMIN = { 'login' => 'superadmin', 'password' => '1111' }.freeze
  ADMIN = { 'login' => 'admin', 'password' => '2222' }.freeze

  def users_login
    in_user
    if @user_login == SUPER_ADMIN['login'] && @password_user == SUPER_ADMIN['password']
      p 'superadmin'
    elsif @user_login == ADMIN['login'] && @password_user == ADMIN['password']
      p 'Admin'
    else
      p 'quest'
    end
  end

  def in_user
    p 'Введите логин!'
    p 'superadmin, admin and guest'
    @user_login = gets.chomp.downcase
    p 'password:'
    @password_user = gets.chomp
    p "Здравствуйте #{@user_login}"
  end
end
User.new.users_login
