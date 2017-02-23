class User < ApplicationRecord
  has_secure_password
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets, through: :likes, source: :secret
end
