class CreateGroceries < ActiveRecord::Migration[6.1]
  def change
    create_table :groceries do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :scale

      t.timestamps
    end
  end
end
