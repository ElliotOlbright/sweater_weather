class Api::V1::ForecastController < ApplicationController
	def index
    forecast = WeatherFacade.fetch_forecast(params[:location])

    render json: WeatherSerializer.new(forecast)
  end
end
