class Item < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :name, length: {minimum: 5}, presence: true

  default_scope { order('updated_at DESC') }
end
