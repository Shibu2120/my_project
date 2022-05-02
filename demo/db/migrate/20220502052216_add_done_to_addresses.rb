class AddDoneToAddresses < ActiveRecord::Migration[6.1]
  def change
    add_column :addresses, :done, :string
  end
end
