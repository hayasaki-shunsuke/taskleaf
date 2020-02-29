require 'test_helper'

class SessiosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessios_new_url
    assert_response :success
  end

end
