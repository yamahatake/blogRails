class Post < ApplicationRecord
  # Associations
  belongs_to :user, foreign_key: "author", class_name: "User"
  has_many :comments, dependent: :destroy

  # Validations
  validates :title, presence: true
  validates :content, presence: true
end
