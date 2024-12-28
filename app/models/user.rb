class User < ApplicationRecord
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # Email Validation
  validates :email, presence: { message: "can't be blank" },
        uniqueness: { case_sensitive: false, message: "is already taken" },
        length: { maximum: 105, message: "is too long (maximum is 105 characters)" },
        format: { with: VALID_EMAIL_REGEX, message: "is invalid" }

  # Password Validation
  validates :password, presence: { message: "can't be blank" },
            length: { minimum: 8, maximum: 40, message: "must be between 8 and 40 characters" }

  # First Name Validation
  validates :first_name, presence: { message: "can't be blank" },
            length: { maximum: 30, message: "is too long (maximum is 30 characters)" }

  # Last Name Validation
  validates :last_name, presence: { message: "can't be blank" },
            length: { maximum: 50, message: "is too long (maximum is 50 characters)" }
end
