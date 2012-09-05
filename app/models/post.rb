class Post < ActiveRecord::Base
  attr_accessible :body

  belongs_to :topic

  validates(:body, :presence => true)

  def to_s
    self.body
  end
end
