class WeatherFacade
  class << self
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
  end 
end