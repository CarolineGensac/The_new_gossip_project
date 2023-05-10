require "test_helper"

class GossipformPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get gossipform_pages_form_url
    assert_response :success
  end
end
