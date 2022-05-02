class CreateAccountHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :account_histories do |t|
      t.integer :user_account_id
      t.integer :rating

      t.timestamps
    end
  end
end
