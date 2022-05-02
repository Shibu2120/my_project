class User < ApplicationRecord
	has_many :listitems, dependent: :destroy
	has_many :grocery, through: :listitems


	validates :email, :name, :gender, presence: true
	validates :email, uniqueness: true
	validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ } 
	
	def self.search(search)
     if search.present?
       User.where('name LIKE ?', "%#{search}%")
     else
       @users = User.all
     end
   end  
end
