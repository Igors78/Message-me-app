# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :messages
  validates :name, presence: true, length: { minimum: 3, maximum: 15 },
                   uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
end
