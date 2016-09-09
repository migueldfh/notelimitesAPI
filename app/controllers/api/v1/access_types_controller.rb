module Api::V1
  class AccessTypesController < ApplicationController
    before_action :set_access_type, only: [:show, :update, :destroy]

    # GET /access_types
    def index
      @access_types = AccessType.all

      render json: @access_types
    end

    # GET /access_types/1
    def show
      render json: @access_type
    end

    # POST /access_types
    def create
      @access_type = AccessType.new(access_type_params)

      if @access_type.save
        render json: @access_type, status: :created, location: @access_type
      else
        render json: @access_type.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /access_types/1
    def update
      if @access_type.update(access_type_params)
        render json: @access_type
      else
        render json: @access_type.errors, status: :unprocessable_entity
      end
    end

    # DELETE /access_types/1
    def destroy
      @access_type.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_access_type
      @access_type = AccessType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def access_type_params
      params.require(:access_type).permit(:id, :type)
    end
  end

end