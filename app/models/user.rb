require 'bcrypt'

class User < ActiveRecord::Base

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :sheets

  include BCrypt
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email:email)
    @user.password == password
  end

end
