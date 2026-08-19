class User < ApplicationRecord
  has_secure_password

  # Associations
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)+\z/

  # Validations
  validates :username, presence: true, length: { minimum: 3, maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }, if: :password_required?

  # Callbacks
  before_save :downcase_email

  private

  def downcase_email
    self.email = email.downcase
  end
end
