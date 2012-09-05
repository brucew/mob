class Topic < ActiveRecord::Base
  attr_accessible :board_id, :subject, :body_attributes

  belongs_to :board
  has_one :body, :class_name => 'Post'
  has_many :posts, :dependent => :destroy

  #validates(:posts, :length => { :minimum => 1 })
  validates(:subject, :presence => true)

  accepts_nested_attributes_for :body, :allow_destroy => true
end
