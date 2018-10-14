class AddCategoryIdToToDoItems < ActiveRecord::Migration[5.2]
  def change
    add_column :to_do_items, :category_id, :integer
  end
end
