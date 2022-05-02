class RemoveDayMonthYearFromEmployees < ActiveRecord::Migration[6.1]
  def change
    remove_column :employees, :day, :string
    remove_column :employees, :month, :string
    remove_column :employees, :year, :string
  end
end
