class Employee < ApplicationRecord
	has_many :feedbacks, dependent: :destroy

   has_many_attached :images
   # employee.avatar.attach io: File.open("~/face.jpg"), filename: "avatar.jpg", content_type: "image/jpg"
   # employee.avatar.exist? # => true

   # employee.avatar.purge
   # employee.avatar.exist? # => false

   # employee.avatar.url(expires_in: 5.minutes) # => /rails/blobs/<encoded-key>

    # has_one :account, dependent: :destroy
    has_many :accounts 
    has_many :employee_social_accounts
    has_many :socialplateforms, through: :employee_social_accounts

    # validates :account_number, absence: true
    validates :gmail_id, confirmation: { case_sensitive: false }
    # validates :adhar_number, :gmail_id, :phone_number, uniqueness: true 
    #validates :phone_number, length: { maximum: 10, minimum: 10, too_long: "%{count} characters is the minimum or maximum allowed" }
    # validates :phone_number, :adhar_number, numericality: { only_integer: true }
	 validates :first_name, :last_name, :phone_number, :gmail_id, :address, :adhar_number, presence: true
    validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters"}
    # validates :adhar_number, :account_number, length: { in: 10..14 }, allow_blank: true
    # validates :date_of_birth, presence: true
    # validate :validate_student_age
    # validates :phone_number, length: { maximum: 10 }, if: :mobile_number?
    
    def mobile_number?     # if there is last_name shilpi then is generate error but not if there is no shilpi
        last_name == "shilpi"
    end    

    # before_create :send_greeting_message

    # def send_greeting_message
    #     puts "Hey! i will going to run you befor creating"
    # end    

    after_commit :display_employee_age

    # def display_employee
    #     puts "Hey this is run after the creation! "
    # end    

    def display_employee_age
       if self.date_of_birth.present?
       age = Date.today.year - self.date_of_birth.year
        puts "==========Age of the employee is============== #{age}"
       else
        puts "==========Age can not be calculated without date of birth==========="
       end  
    end   

    # def validate_student_age
    #     if self.date_of_birth.present?
    #         age = Date.today.year - self.date_of_birth.year
    #         if age < 15
    #             errors.add(:age, "Please provide a valid date of age is more than 15")
    #         end 
    #     end 
    # end
end
