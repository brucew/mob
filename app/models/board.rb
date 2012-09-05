class Board < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :topics, :dependent => :destroy

  validates(:description, :presence => true)
  validates(:name, :presence => true)
end
