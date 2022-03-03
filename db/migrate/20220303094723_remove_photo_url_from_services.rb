class RemovePhotoUrlFromServices < ActiveRecord::Migration[6.1]
  def change
    remove_column :services, :photo_url, :string
  end
end
