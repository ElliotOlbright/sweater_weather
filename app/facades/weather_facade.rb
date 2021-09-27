class WeatherFacade
  class << self
    def fetch_forecast(location)
			data = retrieve_weather(location)
			Forecast.new(current_weather(data), daily_weather(data), hourly_weather(data)) if data.present?
		end

		def retrieve_weather(location)
			data = MapquestService.get_coordinates(location)
			coords = data[:results][0][:locations][0][:latLng]
			WeatherService.get_weather(coords[:lat], coords[:lng])
      require "pry"; binding.pry
    end 

    def get_current(lat, lon)
      json = WeatherService.get_weather(lat, lon)
      CurrentWeather.new(json)
    end 

    def get_hourly(lat, lon)
      json = WeatherService.get_weather(lat, lon)
			json[:hourly].first(8).map do |hour|
				HourlyWeather.new(hour)
			end
		end

    def get_5_day(lat, lon) 
      json = WeatherService.get_weather(lat, lon)
      json[:daily].first(5).map do |day|
        FiveDayWeather.new(day)
      end 
    end 
  end 
end