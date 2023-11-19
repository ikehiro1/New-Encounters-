require "test_helper"

class AnnouncesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get announces_index_url
    assert_response :success
  end

  test "should get index_all" do
    get announces_index_all_url
    assert_response :success
  end

  test "should get show" do
    get announces_show_url
    assert_response :success
  end

  test "should get new" do
    get announces_new_url
    assert_response :success
  end

  test "should get edit" do
    get announces_edit_url
    assert_response :success
  end

  test "should get update" do
    get announces_update_url
    assert_response :success
  end

  test "should get destroy" do
    get announces_destroy_url
    assert_response :success
  end
end
