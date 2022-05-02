class AddDateOfBirthToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :date_of_birth, :string
  end
end
