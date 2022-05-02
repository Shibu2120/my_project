class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_of_published
      t.decimal :price
      t.boolean :out_of_print
      t.integer :views
      t.integer :supplier_id
    

      t.timestamps
    end
  end
end
