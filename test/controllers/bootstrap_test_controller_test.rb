require 'test_helper'

class BootstrapTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bootstrap_test_index_url
    assert_response :success
  end

end
