# Post model
class Post < ActiveRecord::Base
  # Remember to create a migration!

  # Make sure user includes a body and presence
  validates :title, presence: true
  validates :body, presence: true

  has_many :posts

end
