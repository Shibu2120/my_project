class CreateEmployeeSocialAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_social_accounts do |t|
      t.integer :employee_id
      t.integer :socialplateform_id
      t.string :name

      t.timestamps
    end
  end
end
