require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get member_params" do
    get members_member_params_url
    assert_response :success
  end
end
