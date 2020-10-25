require 'test_helper'

class VolunteerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get volunteer_index_url
    assert_response :success
  end

end
