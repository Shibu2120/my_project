class ChangeDateOfBirthFromEmployee < ActiveRecord::Migration[6.1]
  def change
    change_column :employees, :date_of_birth, :date
  end
end
