class Archive < ActiveRecord::Base
  has_many :blogs#, dependent: :destory
end
