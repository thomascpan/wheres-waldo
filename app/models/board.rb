class Board < ActiveRecord::Base
	has_many :scores
	has_many :characters
end
