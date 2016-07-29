class User < ActiveRecord::Base
  has_many :links

  def self.sign_up(email)
    User.create(email: email)
  end
end
