require 'test_helper'

class CitamedicasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get citamedicas_index_url
    assert_response :success
  end

  test "should get new" do
    get citamedicas_new_url
    assert_response :success
  end

  test "should get edit" do
    get citamedicas_edit_url
    assert_response :success
  end

  test "should get create" do
    get citamedicas_create_url
    assert_response :success
  end

  test "should get update" do
    get citamedicas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get citamedicas_destroy_url
    assert_response :success
  end

end
