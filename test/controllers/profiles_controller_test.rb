require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get my_profile" do
    get profiles_my_profile_url
    assert_response :success
  end
end
