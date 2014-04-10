class CreatePhotoAlbum < ActiveRecord::Migration
  def self.up
    add_attachment :albums, :photo
  end

  def self.down
    remove_attachment :albums, :photo
  end
end

