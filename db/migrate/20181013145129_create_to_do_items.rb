class CreateToDoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_items do |t|
      t.string :name
      t.integer :sort
      t.datetime :due_date
      t.boolean :is_completed, default: false

      t.timestamps
    end
  end
end
