class Permission < ApplicationRecord
  # Associations
  belongs_to :role, foreign_key: "role_id", class_name: "Role"

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :read, inclusion: { in: [true, false] }
  validates :delete, inclusion: { in: [true, false] }
  validates :create, inclusion: { in: [true, false] }
  validates :update, inclusion: { in: [true, false] }
end
