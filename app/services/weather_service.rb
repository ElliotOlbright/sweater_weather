class WeatherService < BaseService
  def self.get_weather(latitude, longitude)
    response = conn('http://api.openweathermap.org/data/2.5/onecall').get do |f|
      f.params['appid'] = ENV['weather_key']
      f.params['lat'] = latitude
      f.params['lon'] = longitude
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
