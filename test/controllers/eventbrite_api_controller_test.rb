require 'test_helper'

class EventbriteApiControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get eventbrite_api_new_url
    assert_response :success
  end

  test "should get create" do
    get eventbrite_api_create_url
    assert_response :success
  end

  test "should get update" do
    get eventbrite_api_update_url
    assert_response :success
  end

  test "should get destroy" do
    get eventbrite_api_destroy_url
    assert_response :success
  end

end
