class CurrentWeather
  attr_reader :lat,
              :lon,
              :timezone,
              :sunrise,
              :sunset,
              :temp,
              :feels_like,
              :humidity,
              :uvi,
              :visibility,
              :conditions,
              :icon,
              :dt

  def initialize(data)
    @lat                  = data[:lat]
    @lon                  = data[:lon]
    @timezone             = data[:timezone]
    @dt                   = Time.at(data[:current][:dt])
    @sunrise              = Time.at(data[:current][:sunrise])
    @sunset               = Time.at(data[:current][:sunset])
    @temp                 = k_to_f(data[:current][:temp])
    @feels_like           = k_to_f(data[:current][:feels_like])
    @humidity             = data[:current][:humidity]
    @uvi                  = data[:current][:uvi]
    @visibility           = data[:current][:visibility]
    @conditions           = data[:current][:weather][0][:description]
    @icon                 = data[:current][:weather][0][:icon]
  end

  def k_to_f(k)
    ((k - 273.15) * 9 / 5 + 32).round(2)
  end
end 