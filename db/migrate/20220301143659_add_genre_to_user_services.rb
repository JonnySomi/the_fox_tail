class AddGenreToUserServices < ActiveRecord::Migration[6.1]
  def change
    add_column :user_services, :genre, :string
  end
end
