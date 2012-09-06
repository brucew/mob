class Topic < ActiveRecord::Base
  attr_accessible :board_id, :subject, :body_post_attributes

  belongs_to :board
  has_one :body_post, :class_name => 'Post'
  has_many :posts, :dependent => :destroy, :order => 'position'

  #validates(:posts, :length => { :minimum => 1 })
  validates(:subject, :presence => true)

  accepts_nested_attributes_for :body_post, :allow_destroy => true

  def body
    self.body_post.body
  end

  def created_by=(created_by)
    self.body_post.created_by = created_by
    super
  end
end
