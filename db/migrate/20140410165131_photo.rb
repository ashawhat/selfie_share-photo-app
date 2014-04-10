class Photo < ActiveRecord::Migration
  def change
    add_column :photos, :caption, :string
    add_column :photos, :album_id, :integer
  end
end
