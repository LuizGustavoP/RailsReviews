require 'test_helper'

class HdreamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hdream_index_url
    assert_response :success
  end

end
