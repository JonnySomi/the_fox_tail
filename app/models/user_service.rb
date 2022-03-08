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
    amount = ((subscription_time * price_per_month) + price_per_month)
    return amount
  end

  def due_date
    if start_date.day > Date.today.day
      next_paying_day = start_date.day - Date.today.day
    else
      if Date.today.month == 1 || Date.today.month == 3 || Date.today.month == 5 || Date.today.month == 6 || Date.today.month == 7 || Date.today.month == 8 || Date.today.month == 10 || Date.today.month == 12
        next_paying_day = 31 - (Date.today.day - start_date.day)
      else
        next_paying_day = 30 - (Date.today.day - start_date.day)
      end
    end
    return next_paying_day
  end

  def hours_spent
    if hour_spent_per_month.month == Date.today.month
      hours = 0
    else
      hours = hour_spent_per_month
    end
    return hours
  end

end
