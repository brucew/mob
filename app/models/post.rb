class Post < ActiveRecord::Base
  attr_accessible :body, :topic_id

  belongs_to :topic

  acts_as_list :scope => :topic

  validates(:body, :presence => true)

  def to_s
    self.body
  end
end
