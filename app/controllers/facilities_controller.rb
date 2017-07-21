class FacilitiesController < ApplicationController

  def index
    @park = Park.find(params[:park_id])
    json_response(@park.facilities)
  end

  def show
    @facility = Facility.find(params[:id])
    json_response(@facility)
  end

  def create
    @park = Park.find(params[:park_id])
    @facility = @park.facilities.create!(facility_params)
    json_response(@facility.park, :created)
  end

  def update
    @facility = Facility.find(params[:id])
    if @facility.update!(facility_params)
      render status: 200, json: {
        message: "Facility has been updated."
      }
    end
  end

  def destroy
    @facility = Facility.find(params[:id])
    @facility.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def facility_params
    params.permit(:amenity, :description)
  end
end
