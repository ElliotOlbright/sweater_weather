class Api::V1::WeatherController < ApplicationController
	def index
    forecast = WeatherFacade.fetch_forecast(params[:location])

    render json: WeatherSerializer.new(forecast)
  end
end
