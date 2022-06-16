require "test_helper"

class LieuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lieu_index_url
    assert_response :success
  end

  test "should get show" do
    get lieu_show_url
    assert_response :success
  end

  test "should get new" do
    get lieu_new_url
    assert_response :success
  end

  test "should get create" do
    get lieu_create_url
    assert_response :success
  end

  test "should get edit" do
    get lieu_edit_url
    assert_response :success
  end

  test "should get update" do
    get lieu_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lieu_destroy_url
    assert_response :success
  end
end
