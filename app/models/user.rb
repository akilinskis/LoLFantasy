class User < ActiveRecord::Base
  has_many :teams
  has_many :leagues

  before_create :create_remember_token

  def self.authenticate(username = "", password = "")
    user = User.find_by_name(username)
    if user && user.password == password
      return user
    else
      return false
    end
  end

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end