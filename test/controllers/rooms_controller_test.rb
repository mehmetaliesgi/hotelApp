require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rooms_index_url
    assert_response :success
  end

  test "should get edit" do
    get rooms_edit_url
    assert_response :success
  end

  test "should get new" do
    get rooms_new_url
    assert_response :success
  end
end
