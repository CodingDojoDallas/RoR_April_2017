class Secret < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :users, through: :likes #, source: :user

  validates :context, presence: true
end
