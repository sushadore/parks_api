class ParksController < ApplicationController

  def index
    @parks = Park.all
    # title = params[:title]
    # @parks = Park.title_search(title)
    json_response(@parks.page(params[:page]))

  end

  def show
    park = Park.find(params[:id])
    json_response(park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {
        message: "Park has been updated."
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    @park.destroy
    if @park.destroy!
      render status: 200, json: {
        message: "The park has been deleted."
      }
  end
end

private
  def json_response(object, status = :ok)
    render json: object.as_json(include: :facilities), status: status
  end

  def park_params
    params.permit(:name, :category, :location)
  end
end
