class CreateSocialplateforms < ActiveRecord::Migration[6.1]
  def change
    create_table :socialplateforms do |t|
      t.string :name

      t.timestamps
    end
  end
end
