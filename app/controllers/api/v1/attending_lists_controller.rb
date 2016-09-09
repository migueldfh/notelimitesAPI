module Api::V1
  class AttendingListsController < ApplicationController
    before_action :set_attending_list, only: [:show, :update, :destroy]

    # GET /attending_lists
    def index
      @attending_lists = AttendingList.all

      render json: @attending_lists
    end

    # GET /attending_lists/1
    def show
      render json: @attending_list
    end

    # POST /attending_lists
    def create
      @attending_list = AttendingList.new(attending_list_params)

      if @attending_list.save
        render json: @attending_list, status: :created, location: @attending_list
      else
        render json: @attending_list.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /attending_lists/1
    def update
      if @attending_list.update(attending_list_params)
        render json: @attending_list
      else
        render json: @attending_list.errors, status: :unprocessable_entity
      end
    end

    # DELETE /attending_lists/1
    def destroy
      @attending_list.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_attending_list
      @attending_list = AttendingList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attending_list_params
      params.require(:attending_list).permit(:id, :userID, :eventID)
    end
  end


end