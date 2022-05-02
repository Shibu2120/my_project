class CreateListitems < ActiveRecord::Migration[6.1]
  def change
    create_table :listitems do |t|
      t.integer :user_id
      t.integer :grocery_id
      t.string :quantity

      t.timestamps
    end
  end
end
