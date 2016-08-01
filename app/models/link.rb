class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  
  validates :url, format: {with: /\A(http|https):\/\//}
end
