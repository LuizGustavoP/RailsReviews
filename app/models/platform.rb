class Platform < ApplicationRecord
  has_many :games, dependent: :restrict_with_exception
  validates :nome, presence: true, length: {minimum: 1}
end
