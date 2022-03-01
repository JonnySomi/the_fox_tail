class RemoveCategoryFromUserServices < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_services, :category, :string
  end
end
