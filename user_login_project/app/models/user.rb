class User < ApplicationRecord
      EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
      validates :first_name, :last_name, :email_address, :age, presence: true
end
