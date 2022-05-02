class AddDayMonthYearToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :day, :string
    add_column :employees, :month, :string
    add_column :employees, :year, :string
  end
end
