class Quiz < ActiveRecord::Base
  validates_presence_of :title, :on => :create
  validates_presence_of :category
  validates_uniqueness_of :title
end
