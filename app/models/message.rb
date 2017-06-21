class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  validates :body, length: { maximum: 100 }
end
