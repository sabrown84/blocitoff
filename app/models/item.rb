class Item < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :name, length: {minimum: 5}, presence: true

  default_scope { order('updated_at DESC') }

  def days_left
    distance_of_time_in_words(created_at, Date.today - 7.days)
  end
end
