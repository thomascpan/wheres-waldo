class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :board

	def seconds_in_hh_mm_ss
		return Time.at(self.time).utc.strftime("%H:%M:%S")
	end
end
