require 'test_helper'

class OrderjerseysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orderjerseys_index_url
    assert_response :success
  end

  test "should get show" do
    get orderjerseys_show_url
    assert_response :success
  end

  test "should get new" do
    get orderjerseys_new_url
    assert_response :success
  end

  test "should get edit" do
    get orderjerseys_edit_url
    assert_response :success
  end

end
