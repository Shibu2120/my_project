class RemoveAdharnumberFromEmployees < ActiveRecord::Migration[6.1]
  def change
    remove_column :employees, :adr_number, :bigint
  end
end
