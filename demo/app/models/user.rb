class User < ApplicationRecord
    has_many :addresses, inverse_of: :user

    accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: true


    mount_uploader :avatar, AvatarUploader

    # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

	# validates :email, :name, :gender, presence: true
 #    validates :email, uniqueness: true
 #    validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ } 
end
