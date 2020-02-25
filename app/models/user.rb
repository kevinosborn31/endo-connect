class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :questions
  has_many :notes
  has_many :medications
  has_many :answers, through: :questions
end
