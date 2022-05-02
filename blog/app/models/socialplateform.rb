class Socialplateform < ApplicationRecord
   has_many :employee_social_accounts
   has_many :employees, through: :employee_social_accounts
end
