class WeatherSerializer
  include FastJsonapi::ObjectSerializer
  attributes :current, :daily, :hourly
end
