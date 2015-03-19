class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :description
      t.string :category
      t.attachment :file

      t.timestamps
    end

    add_index :photos, :file_file_name
    add_index :photos, :category
  end
end