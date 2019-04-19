require 'test_helper'

class JerseysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jersey = jerseys(:one)
  end

  test "should get index" do
    get jerseys_url
    assert_response :success
  end

  test "should get new" do
    get new_jersey_url
    assert_response :success
  end

  test "should create jersey" do
    assert_difference('Jersey.count') do
      post jerseys_url, params: { jersey: { country: @jersey.country, description: @jersey.description, image_url: @jersey.image_url, price: @jersey.price, size: @jersey.size, team: @jersey.team, year: @jersey.year } }
    end

    assert_redirected_to jersey_url(Jersey.last)
  end

  test "should show jersey" do
    get jersey_url(@jersey)
    assert_response :success
  end

  test "should get edit" do
    get edit_jersey_url(@jersey)
    assert_response :success
  end

  test "should update jersey" do
    patch jersey_url(@jersey), params: { jersey: { country: @jersey.country, description: @jersey.description, image_url: @jersey.image_url, price: @jersey.price, size: @jersey.size, team: @jersey.team, year: @jersey.year } }
    assert_redirected_to jersey_url(@jersey)
  end

  test "should destroy jersey" do
    assert_difference('Jersey.count', -1) do
      delete jersey_url(@jersey)
    end

    assert_redirected_to jerseys_url
  end
end
