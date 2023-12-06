require "test_helper"

class FollowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get follows_index_url
    assert_response :success
  end

  test "should get followers" do
    get follows_followers_url
    assert_response :success
  end

  test "should get following" do
    get follows_following_url
    assert_response :success
  end
end
