class AddCommentsToPin < ActiveRecord::Migration[5.2]
  def change
  	remove_column :comments, :pin_id
  	add_reference :comments, :pin, foreign_key: true
  end
end
