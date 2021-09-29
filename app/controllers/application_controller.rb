class ApplicationController < ActionController::API
	rescue_from JSON::ParserError, with: :json_render_failure
	rescue_from ArgumentError, with: :bad_coordinates
	rescue_from ActiveRecord::RecordNotFound, with: :invalid_api_key


	def bad_coordinates
		render json: { error: "Please enter a valid location" }, status: :bad_request
	end
end
