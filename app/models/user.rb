class User < ActiveRecord::Base
	validates :name, presence: true
	has_many :scores

	def User.next_guest_name
		"Guest #{ User.count + 1 }"
	end
end
