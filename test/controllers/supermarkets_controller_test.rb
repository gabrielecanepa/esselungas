require 'test_helper'

class SupermarketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supermarkets_index_url
    assert_response :success
  end

  test "should get show" do
    get supermarkets_show_url
    assert_response :success
  end

  test "should get new" do
    get supermarkets_new_url
    assert_response :success
  end

  test "should get create" do
    get supermarkets_create_url
    assert_response :success
  end

  test "should get edit" do
    get supermarkets_edit_url
    assert_response :success
  end

  test "should get update" do
    get supermarkets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get supermarkets_destroy_url
    assert_response :success
  end

end
