class AddColumnsToUserServices < ActiveRecord::Migration[6.1]
  def change
    add_column :user_services, :price_per_month, :integer
    add_column :user_services, :hour_spent_per_month, :integer
    add_column :user_services, :category, :string
    add_column :user_services, :start_date, :date
  end
end
