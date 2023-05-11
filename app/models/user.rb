class User < ApplicationRecord
  has_many :gossips
  has_secure_password

  validates :first_name, presence: true
  validates :email,
            presence: true,
            uniqueness: true
  #   format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

  validates :password,
  presence: true,
  length: { minimum: 6 }
end
