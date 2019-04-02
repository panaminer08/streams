require 'test_helper'

class StreamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get streams_index_url
    assert_response :success
  end

  test "should get new" do
    get streams_new_url
    assert_response :success
  end

  test "should get create" do
    get streams_create_url
    assert_response :success
  end

  test "should get destroy" do
    get streams_destroy_url
    assert_response :success
  end

end
