class SignupsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
  def create
    signup = Signup.create!(permitted_params)
    render json: signup.activity, status:201
  end



  private 

  def permitted_params
    params.permit(:activity_id, :camper_id, :time)
end

def unprocessable_entity(error)
  render json: {errors: error.record.errors.full_messages }, status: :unprocessable_entity

end

end
