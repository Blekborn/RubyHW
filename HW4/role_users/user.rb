# frozen_string_literal: true

require 'yaml'

# Some documentation for User
class User

  attr_accessor :user_login, :password_user, :role

  def initialize
    @user_login = user_login
    @password_user = password_user
    @role = role
  end

  def users_login

  end

  def in_user
    
  end
end
User.new.users_login