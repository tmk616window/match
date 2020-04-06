require 'test_helper'

class StaffsessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staffsessions_new_url
    assert_response :success
  end

end
