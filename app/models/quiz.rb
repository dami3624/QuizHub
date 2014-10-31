class Quiz < ActiveRecord::Base
belongs_to :user
  validates_presence_of :title, :on => :create
  validates_presence_of :category
  validates_uniqueness_of :title
end
