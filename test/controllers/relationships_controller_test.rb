require "test_helper"

class RelationshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get 　create" do
    get relationships_　create_url
    assert_response :success
  end

  test "should get destroy" do
    get relationships_destroy_url
    assert_response :success
  end
end
