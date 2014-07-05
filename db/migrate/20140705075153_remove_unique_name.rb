class RemoveUniqueName < ActiveRecord::Migration
  def up
    remove_index :rsvps, :name
    add_index :rsvps, :name
  end
  
  def down
    remove_index :rsvps, :name
    add_index :rsvps, :name, :unique=>true
  end
end