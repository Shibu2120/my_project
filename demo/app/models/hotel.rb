class Hotel < ApplicationRecord
	has_many :reviews, dependent: :destroy
	validates :name, :address, presence: true
	validates :name, uniqueness: true

	
end
