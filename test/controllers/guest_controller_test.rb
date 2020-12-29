require 'test_helper'

class GuestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_index_url
    assert_response :success
  end

end
