class AddAdharnumberToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :adhar_number, :string
  end
end
