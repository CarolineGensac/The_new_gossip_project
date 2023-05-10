class Gossip < ApplicationRecord
  belongs_to :user

  validates :title, length: {minimum: 3, maximum: 14}
  validates :content, presence: true
end
