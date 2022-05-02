class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.integer :employee_id
      t.string :account_number

      t.timestamps
    end
  end
end
