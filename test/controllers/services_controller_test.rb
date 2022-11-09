require "test_helper"

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get services_create_url
    assert_response :success
  end

  test "should get show" do
    get services_show_url
    assert_response :success
  end

  test "should get update" do
    get services_update_url
    assert_response :success
  end
end
