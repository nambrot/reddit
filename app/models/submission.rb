class Submission < ActiveRecord::Base
  belongs_to :user

  validates :link, format: URI::regexp(%w(http https)), presence: true
  validates :title, presence: true
  validates :user, presence: true
  # if we want links to be unique
  # validates :link, uniqueness: true

  # if we want to constrain the length
  # validates :title, length: {in: 6..10}

  def upvote
    self.votes += 1
    self.save
  end

  def downvote
    self.votes -= 1
    self.save
  end
end
