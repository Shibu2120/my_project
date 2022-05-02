class Course < ApplicationRecord
	has_many :student_courses
	has_many :student ,through: :student_courses 
end
