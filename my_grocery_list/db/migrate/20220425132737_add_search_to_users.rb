class AddSearchToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :search, :string
  end
end
