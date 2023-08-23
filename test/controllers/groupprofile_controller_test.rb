require "test_helper"

class GroupprofileControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get groupprofile_profile_url
    assert_response :success
  end
end
