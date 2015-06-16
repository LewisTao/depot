require 'test_helper'

class UserTest < ActiveSupport::TestCase
	setup do
		@input_attritubes = {
			name: "sam",
			password: "private",
			password_confirmation: "private",
		}
		@user = users(:one)
	end

	test "should create user" do
		assert_difference('User.count') do
			post :create, user: @input_attritubes
		end
		assert_redirected_to users_path
	end

	test "should update user" do
		put :update, id: @user, user: @input_attritubes
		assert_redirected_to users_path
	end
end
