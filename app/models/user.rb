class User < ActiveRecord::Base
  has_many :links
  validates :email, format: {with: /@/} , uniqueness: true

  def self.sign_up(email)
    User.create(email: email)
  end
end
