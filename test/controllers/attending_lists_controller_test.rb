require 'test_helper'

class AttendingListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attending_list = attending_lists(:one)
  end

  test "should get index" do
    get attending_lists_url, as: :json
    assert_response :success
  end

  test "should create attending_list" do
    assert_difference('AttendingList.count') do
      post attending_lists_url, params: { attending_list: { eventID: @attending_list.eventID, id: @attending_list.id, userID: @attending_list.userID } }, as: :json
    end

    assert_response 201
  end

  test "should show attending_list" do
    get attending_list_url(@attending_list), as: :json
    assert_response :success
  end

  test "should update attending_list" do
    patch attending_list_url(@attending_list), params: { attending_list: { eventID: @attending_list.eventID, id: @attending_list.id, userID: @attending_list.userID } }, as: :json
    assert_response 200
  end

  test "should destroy attending_list" do
    assert_difference('AttendingList.count', -1) do
      delete attending_list_url(@attending_list), as: :json
    end

    assert_response 204
  end
end
