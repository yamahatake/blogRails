class Role < ApplicationRecord
  # Associations
  has_many :permissions, dependent: :destroy

  # Validations
  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: {maximum: 255 }
end
