class CreateRsvp < ActiveRecord::Migration
  def up
    create_table :rsvps do |t|
      t.string :name, :null=>false
      t.string :email, :null=>false
      t.string :entree, :null=>false
      t.boolean :shuttle, :null=>false
      t.string :other
    end

    add_index :rsvps, :name, :unique=>true
    add_index :rsvps, :email, :unique=>true
  end
  
  def down
    drop_table :rsvps
  end
end