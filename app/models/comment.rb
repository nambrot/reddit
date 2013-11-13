class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission

  validates :user, presence: true
  validates :submission, presence: true
  validates :text, presence: true, length: {minimum: 5}
end
