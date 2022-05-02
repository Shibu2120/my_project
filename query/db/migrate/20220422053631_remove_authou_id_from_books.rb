class RemoveAuthouIdFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :authou_id, :integer
  end
end
