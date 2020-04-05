require 'test_helper'

class LoginHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get login_home_index_url
    assert_response :success
  end

end
