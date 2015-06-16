require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
	fixtures :products

	test "the true" do
		LineItem.delete_all
		Order.delete_all
		ruby_book = products(:ruby)
	end
end
