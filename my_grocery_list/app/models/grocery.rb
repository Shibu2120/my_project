class Grocery < ApplicationRecord
	has_many :listitems
	has_many :user, through: :listitems

	validates :name, :price, :scale, presence: true
	validates :name, uniqueness: true
	
	def grocery_item
		"#{name} - #{scale} - #{price}rs "
    end	
end
