class CreateUserAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_accounts do |t|
      t.string :name
      t.string :contact
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
