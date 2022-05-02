class ChangeAdharnumberOnEmployees < ActiveRecord::Migration[6.1]
  def change
    change_column :employees, :adr_number, :bigint
  end
end
