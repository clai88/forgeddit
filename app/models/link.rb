class Link < ActiveRecord::Base
  belongs_to :user
  has_many :commentsss
end
