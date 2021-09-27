class FiveDayWeather
  attr_reader :dt, 
              :sunrise, 
              :sunset,
              :max_temp,
              :min_temp,
              :conditions,
              :icon
  
  def initialize(data)
    @dt                   = Time.at(data[:dt]).to_s
    @sunrise              = Time.at(data[:sunrise]).to_s
    @sunset               = Time.at(data[:sunset]).to_s
    @max_temp             = k_to_f(data[:temp][:max])
    @min_temp             = k_to_f(data[:temp][:min])
    @conditions           = data[:weather][0][:description]
    @icon                 = data[:weather][0][:icon]
  end 

  def k_to_f(k)
    ((k - 273.15) * 9 / 5 + 32).round(2)
  end
end 
  