require 'test_helper'

class ReceiveddatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get receiveddates_index_url
    assert_response :success
  end

end
