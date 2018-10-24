class AddIndexToPins < ActiveRecord::Migration[5.2]
  def change
  	remove_column :pins, :user_id
    add_reference :pins, :user, foreign_key: true
  end
end
