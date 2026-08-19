class Post < ApplicationRecord
  # Associations
  belongs_to :user, foreign_key: "author", class_name: "User"
  has_many :comments, dependent: :destroy

  # Validations
  validates :title, presence: true, uniqueness: true, length: { minimum: 5, maximum: 100 }
  validates :description, length: { maximum: 255 }, allow_blank: true
  validates :content, presence: true,
end
