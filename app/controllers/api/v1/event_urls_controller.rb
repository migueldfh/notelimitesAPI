module Api::V1
  class EventUrlsController < ApplicationController
    before_action :set_event_url, only: [:show, :update, :destroy]

    # GET /event_urls
    def index
      @event_urls = EventUrl.all

      render json: @event_urls
    end

    # GET /event_urls/1
    def show
      render json: @event_url
    end

    # POST /event_urls
    def create
      @event_url = EventUrl.new(event_url_params)

      if @event_url.save
        render json: @event_url, status: :created, location: @event_url
      else
        render json: @event_url.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /event_urls/1
    def update
      if @event_url.update(event_url_params)
        render json: @event_url
      else
        render json: @event_url.errors, status: :unprocessable_entity
      end
    end

    # DELETE /event_urls/1
    def destroy
      @event_url.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_url
      @event_url = EventUrl.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_url_params
      params.require(:event_url).permit(:id, :url, :eventID)
    end
  end

end