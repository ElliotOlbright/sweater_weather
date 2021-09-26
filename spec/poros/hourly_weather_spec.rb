require 'rails_helper'

RSpec.describe CurrentWeather do 
  it 'exists and has attributes' do 
    attrs = {:dt=>1632686400,
             :temp=>296.17,
             :feels_like=>295.78,
             :pressure=>1018,
             :humidity=>48,
             :dew_point=>284.58,
             :uvi=>3.57,
             :clouds=>39,
             :visibility=>10000,
             :wind_speed=>3.17,
             :wind_deg=>226,
             :wind_gust=>3.46,
             :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}],
             :pop=>0}

    weather = HourlyWeather.new(attrs)

    expect(weather.conditions).to eq("scattered clouds")
    expect(weather.dt).to eq("14:00:00")
    expect(weather.icon).to eq("03d")
    expect(weather.temp).to eq(73.44)
  end 
end 