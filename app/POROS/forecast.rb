class Forecast
  attr_reader :daily,
              :hourly,
              :current,
              :id

    def initialize(current_weather, five_day_weather, hourly_weather)
      @id      = nil
      @current = current_weather
      @daily   = five_day_weather
      @hourly  = hourly_weather
    end
end 