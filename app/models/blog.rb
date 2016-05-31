class Blog < ActiveRecord::Base
  acts_as_taggable_on :tags
  belongs_to :archive
  has_many :comments
end
