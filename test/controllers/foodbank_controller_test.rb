require 'test_helper'

class FoodbankControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foodbank_index_url
    assert_response :success
  end

end
