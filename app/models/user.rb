class User < ApplicationRecord
  # Associations
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  # Callbacks
  before_save :downcase_email

  private

  def downcase_email
    self.email = email.downcase
  end
end
