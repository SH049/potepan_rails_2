require "test_helper"

class IntrosControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get intros_show_url
    assert_response :success
  end
end
