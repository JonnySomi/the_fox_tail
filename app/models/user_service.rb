class UserService < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates :price_per_month, :hour_spent_per_month, :genre, :start_date, presence: true
end
