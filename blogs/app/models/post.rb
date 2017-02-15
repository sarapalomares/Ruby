class Post < ApplicationRecord
  belongs_to :blog
  has_many :messages
  validates :title, :context, presence: true
  # validates :title, length {minimum: 7}
end
