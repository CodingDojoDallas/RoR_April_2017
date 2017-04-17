require 'test_helper'

class GoldControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gold_index_url
    assert_response :success
  end

  test "should get dig" do
    get gold_dig_url
    assert_response :success
  end

end
