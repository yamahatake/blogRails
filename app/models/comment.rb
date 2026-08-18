class Comment < ApplicationRecord
  # Associations
  belongs_to :post, foreign_key: "post_id", class_name: "Post"
  belongs_to :user, foreign_key: "user_id", class_name: "User"

  # Validations
  validates :content, presence: true
end
