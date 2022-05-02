class CreateAccountes < ActiveRecord::Migration[6.1]
  def change
    create_table :accountes do |t|
      t.integer :employee_id
      t.string :account_number

      t.timestamps
    end
  end
end
