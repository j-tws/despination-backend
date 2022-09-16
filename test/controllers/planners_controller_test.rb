require 'test_helper'

class PlannersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get planners_new_url
    assert_response :success
  end

  test "should get create" do
    get planners_create_url
    assert_response :success
  end

  test "should get index" do
    get planners_index_url
    assert_response :success
  end

  test "should get show" do
    get planners_show_url
    assert_response :success
  end

  test "should get edit" do
    get planners_edit_url
    assert_response :success
  end

  test "should get update" do
    get planners_update_url
    assert_response :success
  end

  test "should get destroy" do
    get planners_destroy_url
    assert_response :success
  end

end
