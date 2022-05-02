class Appointment < ApplicationRecord
	belong_to :physician
	belong_to :patient
end
