class RemoveApiKeyFromUserService < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_services, :api_key, :string
  end
end
