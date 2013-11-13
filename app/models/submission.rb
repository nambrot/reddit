class Submission < ActiveRecord::Base
  validates :link, format: URI::regexp(%w(http https)), presence: true
  validates :title, presence: true

  # if we want links to be unique
  # validates :link, uniqueness: true

  # if we want to constrain the length
  # validates :title, length: {in: 6..10}
end
