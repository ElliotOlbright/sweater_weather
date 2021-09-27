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

    def get_5_day(lat, lon) 
      json = WeatherService.get_weather(lat, lon)
      json[:daily].first(5).map do |day|
        FiveDayWeather.new(day)
      end 
    end 
  end 
end