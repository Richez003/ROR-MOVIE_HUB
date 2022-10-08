require "test_helper"

class FlizsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flizs_index_url
    assert_response :success
  end

  test "should get show" do
    get flizs_show_url
    assert_response :success
  end
end
