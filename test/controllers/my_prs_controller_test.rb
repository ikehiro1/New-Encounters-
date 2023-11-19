require "test_helper"

class MyPrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_prs_index_url
    assert_response :success
  end

  test "should get show" do
    get my_prs_show_url
    assert_response :success
  end

  test "should get new" do
    get my_prs_new_url
    assert_response :success
  end

  test "should get edit" do
    get my_prs_edit_url
    assert_response :success
  end

  test "should get update" do
    get my_prs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get my_prs_destroy_url
    assert_response :success
  end
end
