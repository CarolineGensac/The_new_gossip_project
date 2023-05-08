require "test_helper"

class TeamPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get team_pages_team_url
    assert_response :success
  end
end
