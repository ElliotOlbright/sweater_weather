class WeatherFacade
  class << self
    def get_weather(lat, lon)
      json = WeatherService.get_weather(lat, lon)
      Weathewr.new(json)
    end 
  end 
end