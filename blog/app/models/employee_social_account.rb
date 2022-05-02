class EmployeeSocialAccount < ApplicationRecord
	belongs_to :employee
	belongs_to :socialplateform
end
