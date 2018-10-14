class AddUserIdToToDoItem < ActiveRecord::Migration[5.2]
  def change
  	add_column :to_do_items, :user_id, :integer
  end
end
