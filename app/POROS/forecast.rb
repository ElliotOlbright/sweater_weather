class Forecast
  attr_reader :daily,
              :hourly,
              :current

    def initialize(current_weather, daily_weather, hourly_weather)
      @id      = nil
      @current = current_weather
      @daily   = daily_weather
      @hourly  = hourly_weather
      require "pry"; binding.pry
    end
end 