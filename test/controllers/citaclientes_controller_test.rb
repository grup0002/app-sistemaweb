require 'test_helper'

class CitaclientesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get citaclientes_index_url
    assert_response :success
  end

  test "should get new" do
    get citaclientes_new_url
    assert_response :success
  end

  test "should get edit" do
    get citaclientes_edit_url
    assert_response :success
  end

  test "should get create" do
    get citaclientes_create_url
    assert_response :success
  end

  test "should get update" do
    get citaclientes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get citaclientes_destroy_url
    assert_response :success
  end

end
