class Role < ApplicationRecord
  # Associations
  has_many :users, dependent: :nullify
  has_many :permissions, dependent: :destroy

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
