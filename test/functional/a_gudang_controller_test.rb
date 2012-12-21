require 'test_helper'

class AGudangControllerTest < ActionController::TestCase
  test "should get destroy_show" do
    get :destroy_show
    assert_response :success
  end

end
