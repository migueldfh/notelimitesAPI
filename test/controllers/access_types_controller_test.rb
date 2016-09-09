require 'test_helper'

class AccessTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_type = access_types(:one)
  end

  test "should get index" do
    get access_types_url, as: :json
    assert_response :success
  end

  test "should create access_type" do
    assert_difference('AccessType.count') do
      post access_types_url, params: { access_type: { id: @access_type.id, type: @access_type.type } }, as: :json
    end

    assert_response 201
  end

  test "should show access_type" do
    get access_type_url(@access_type), as: :json
    assert_response :success
  end

  test "should update access_type" do
    patch access_type_url(@access_type), params: { access_type: { id: @access_type.id, type: @access_type.type } }, as: :json
    assert_response 200
  end

  test "should destroy access_type" do
    assert_difference('AccessType.count', -1) do
      delete access_type_url(@access_type), as: :json
    end

    assert_response 204
  end
end
