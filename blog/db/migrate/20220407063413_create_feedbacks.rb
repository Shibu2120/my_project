class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string :employee_name
      t.text :body
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
