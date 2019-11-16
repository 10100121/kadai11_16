require 'test_helper'

class FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get friends_new_url
    assert_response :success
  end

  test "should get show" do
    get friends_show_url
    assert_response :success
  end

end
