class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :hotel_id
      t.string :rating
      t.text :description

      t.timestamps
    end
  end
end
