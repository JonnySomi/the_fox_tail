class UserService < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates :price_per_month, :hour_spent_per_month, :genre, :start_date, presence: true

  def subscription_time
    number_of_days = Date.today - start_date
    number_of_months = (number_of_days / 30).round
    return number_of_months
  end

  def amount_paid
    amount = (subscription_time * price_per_month)
    return amount
  end

  def due_date
    next_paying_day = start_date.day - Date.today.day
    return next_paying_day
  end

end
