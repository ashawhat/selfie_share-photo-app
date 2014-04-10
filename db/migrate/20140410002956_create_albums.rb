class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :user_id
      t.timestamps
    end
  end
end
