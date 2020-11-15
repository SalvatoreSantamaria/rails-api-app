require 'test_helper'

class Api::V1::AnagramControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_anagram_create_url
    assert_response :success
  end

end
