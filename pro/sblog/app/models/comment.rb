 class Comment < ApplicationRecord
  # belongs_to :article
  has_many :comments
  
  validation :title, presence: true
  validation :body, presence: true, length: { minimum: 10 }
 end  