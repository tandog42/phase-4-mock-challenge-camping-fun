class CampersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
  def index
    render json: Camper.all
  end


def show
camper = Camper.find(params[:id])
  render json: camper, serializer: CamperWithActivitiesSerializer
end


private

def render_not_found_response
  render json: {error: "Camper not found"}, status: 404
end
end
