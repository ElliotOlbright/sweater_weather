class Weather 
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
              :icon

  def initialize(data)
    @lat                  = data[:lat]
    @lon                  = data[:lon]
    @timezone             = data[:timezone]
    @sunrise              = data[:current][:sunrise]
    @sunset               = data[:current][:sunset]
    @temp                 = data[:current][:temp]
    @feels_like           = data[:current][:feels_like]
    @humidity             = data[:current][:humidity]
    @uvi                  = data[:current][:uvi]
    @visibility           = data[:current][:visibility]
    @conditions           = data[:current][:weather][0][:description]
    @icon                 = data[:current][:weather][0][:icon]
  end
end 