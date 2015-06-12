require 'test_helper'

class StoresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select 'h3', 'Programing Ruby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
