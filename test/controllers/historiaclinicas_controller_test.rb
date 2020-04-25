require 'test_helper'

class HistoriaclinicasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get historiaclinicas_index_url
    assert_response :success
  end

  test "should get new" do
    get historiaclinicas_new_url
    assert_response :success
  end

  test "should get edit" do
    get historiaclinicas_edit_url
    assert_response :success
  end

  test "should get create" do
    get historiaclinicas_create_url
    assert_response :success
  end

  test "should get update" do
    get historiaclinicas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get historiaclinicas_destroy_url
    assert_response :success
  end

end
