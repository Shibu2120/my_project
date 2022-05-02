class AddAccountnumberToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :account_number, :string
  end
end
