class AddCompanieIdToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :companie_id, :integer
  end
end
