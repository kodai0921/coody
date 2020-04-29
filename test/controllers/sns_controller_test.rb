require 'test_helper'

class SnsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sns_index_url
    assert_response :success
  end

end
