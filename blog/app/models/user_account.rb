class UserAccount < ApplicationRecord
	has_one :user_account
	has_one :account_history, through: :user_account
end
