class CreatePhoto < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.column :photo_file_name, :string
      t.column :photo_content_type, :string
      t.column :photo_file_size, :integer
      t.column :photo_updated_at, :datetime
    end
  end
end
