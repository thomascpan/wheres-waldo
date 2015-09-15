require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(name: "Thomas")
	end

	test "should be valid" do
		assert @user.valid?
	end

	test "should have name" do 
		@user.name = nil
		assert_not @user.valid?
	end
end
