require "test_helper"

class ContactPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get contact_pages_contact_url
    assert_response :success
  end
end
