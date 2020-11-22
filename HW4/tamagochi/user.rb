class Users
  attr_accessor :user

  def initialize(*user)
    @user = user
      #super
  end

  SUPER_ADMIN = { 'login' => 'superadmin' }.freeze
  ADMIN = { 'login' => 'admin' }.freeze
  GUEST = { 'login' => 'guest' }.freeze

  def user_admin
    login_user
    if @user == SUPER_ADMIN['login']
      p 'superadmin'
    elsif @user == ADMIN['login']
      p 'Admin'
    elsif @user == GUEST['login']
      p 'quest'
      com_pet
    end
  end

  def login_user
    p 'Введите логин!'
    p 'superadmin, admin and guest'
    @user = gets.chomp.downcase
    p "Здравствуйте #{@user}"
  end
end
Users.new.user_admin