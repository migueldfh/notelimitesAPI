require 'test_helper'

class EventUrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_url = event_urls(:one)
  end

  test "should get index" do
    get event_urls_url, as: :json
    assert_response :success
  end

  test "should create event_url" do
    assert_difference('EventUrl.count') do
      post event_urls_url, params: { event_url: { eventID: @event_url.eventID, id: @event_url.id, url: @event_url.url } }, as: :json
    end

    assert_response 201
  end

  test "should show event_url" do
    get event_url_url(@event_url), as: :json
    assert_response :success
  end

  test "should update event_url" do
    patch event_url_url(@event_url), params: { event_url: { eventID: @event_url.eventID, id: @event_url.id, url: @event_url.url } }, as: :json
    assert_response 200
  end

  test "should destroy event_url" do
    assert_difference('EventUrl.count', -1) do
      delete event_url_url(@event_url), as: :json
    end

    assert_response 204
  end
end
