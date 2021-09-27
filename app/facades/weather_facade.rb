class WeatherFacade
  class << self
    def fetch_forecast(location)
			data = retrieve_weather(location)
      lat = data[:lat]
      lon = data[:lon]
			Forecast.new(get_current(lat, lon), get_5_day(lat, lon), get_hourly(lat, lon)) if data.present?
		end

		def retrieve_weather(location)
			data = MapquestService.get_coordinates(location)
			coords = data[:results][0][:locations][0][:latLng]
			WeatherService.get_weather(coords[:lat], coords[:lng])
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