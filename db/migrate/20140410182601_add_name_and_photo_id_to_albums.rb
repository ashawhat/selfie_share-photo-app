class AddNameAndPhotoIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :name, :string
    add_column :albums, :photo_id, :integer
  end
end
