class Tag < ActiveRecord::Base
  has_many :blog_tag_ships#, dependent: :destory
  has_many :blogs, through: :blog_tag_ships
end
