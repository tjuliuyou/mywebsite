class Blog < ActiveRecord::Base
  belongs_to :archive
  has_many :comments
  has_many :blog_tag_ships#, dependent: :restrict_with_exception
  has_many :tags, through: :blog_tag_ships
end
