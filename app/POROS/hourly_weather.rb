class HourlyWeather
  attr_reader :lat,
              :lon,
              :timezone,
              :dt,
              :temp,
              :conditions,
              :icon

  def initialize(data)
    @dt                   = Time.at(data[:dt]).strftime('%H:%M:%S')
    @temp                 = k_to_f(data[:temp])
    @conditions           = data[:weather][0][:description]
    @icon                 = data[:weather][0][:icon]
  end 

  def k_to_f(k)
    ((k - 273.15) * 9 / 5 + 32).round(2)
  end
end 