class Listitem < ApplicationRecord
	belongs_to :user
	belongs_to :grocery

	validates :quantity, presence: true
	validates :quantity, length: {minimum: 1}    
end
