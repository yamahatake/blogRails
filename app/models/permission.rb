class Permission < ApplicationRecord
  # Associations
  belongs_to :role, foreign_key: "role_id", class_name: "Role"

  # Validations
  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :read, inclusion: { in: [true, false] }
  validates :delete, inclusion: { in: [true, false] }
  validates :create, inclusion: { in: [true, false] }
  validates :update, inclusion: { in: [true, false] }
end
