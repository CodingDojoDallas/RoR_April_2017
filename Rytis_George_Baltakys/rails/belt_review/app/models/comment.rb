class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :comment, presence: true
  validates :comment, length: { in: 2..244 }
end
