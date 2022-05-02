class Review < ApplicationRecord
    belongs_to :hotel

  	after_create :review_count_increase
	after_destroy :review_count_decrease


	def review_count_increase
		self.hotel.update(review_count: self.hotel.reviews.count)
    end	

    def review_count_decrease
    	self.hotel.update(review_count: self.hotel.reviews.count)
    end		
end
