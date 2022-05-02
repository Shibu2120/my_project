class AddAgeToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :age, :string
  end
end
