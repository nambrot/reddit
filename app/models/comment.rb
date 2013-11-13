class Comment < ActiveRecord::Base
  default_scope order('created_at DESC')
  
  belongs_to :user
  belongs_to :submission

  validates :user, presence: true
  validates :submission, presence: true
  validates :text, presence: true, length: {minimum: 5}
end
