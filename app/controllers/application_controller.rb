class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid do |e|
  render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end
end
