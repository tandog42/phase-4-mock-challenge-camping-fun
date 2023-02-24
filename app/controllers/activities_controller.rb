class ActivitiesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
def index
render json: Activity.all, status: 200
end

def destroy
act = Activity.find(params[:id])
act.destroy
end

def render_not_found_response
  render json: { error: "Activity not found" }, status: :not_found
end
end
