require "test_helper"

class HistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get histories_show_url
    assert_response :success
  end

  test "should get new" do
    get histories_new_url
    assert_response :success
  end

  test "should get edit" do
    get histories_edit_url
    assert_response :success
  end

  test "should get update" do
    get histories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get histories_destroy_url
    assert_response :success
  end
end
