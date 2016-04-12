class User < ApplicationRecord
  validates :name,presence: true, length: { maximum: 30 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  def name
    "Awasome_"<<self['name']
  end
end
