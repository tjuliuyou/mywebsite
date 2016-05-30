class BlogTagShip < ActiveRecord::Base
  belongs_to :tag#, dependent: :destory
  belongs_to :blog#, dependent: :restrict_with_exception
end
