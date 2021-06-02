require "test_helper"

class CredentialsControllerTest < ActionDispatch::IntegrationTest
  test "should get me" do
    get credentials_me_url
    assert_response :success
  end
end
