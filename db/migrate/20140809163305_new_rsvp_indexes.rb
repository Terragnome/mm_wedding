class NewRsvpIndexes < ActiveRecord::Migration
  def up
    remove_index :rsvps, :name
    add_index :rsvps, :name, :unique=>true

    remove_index :rsvps, :email
    add_index :rsvps, :email
  end
  
  def down
    remove_index :rsvps, :name
    add_index :rsvps, :name

    remove_index :rsvps, :email
    add_index :rsvps, :email
  end
end