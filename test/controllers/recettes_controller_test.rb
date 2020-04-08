require 'test_helper'

class RecettesControllerTest < ActionDispatch::IntegrationTest
  test "should get stt" do
    get recettes_stt_url
    assert_response :success
  end

end
