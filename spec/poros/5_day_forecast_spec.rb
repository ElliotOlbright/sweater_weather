require 'rails_helper'

RSpec.describe FiveDayWeather do
  it 'exists and has attributes' do
    attrs = {:dt=>1632934800,
             :sunrise=>1632915396,
             :sunset=>1632958146,
             :moonrise=>1632888900,
             :moonset=>1632944520,
             :moon_phase=>0.77,
             :temp=>{:day=>299.91, :min=>288.66, :max=>300.16, :night=>291.84, :eve=>293.7, :morn=>288.66},
             :feels_like=>{:day=>300.63, :night=>292.06, :eve=>293.95, :morn=>288.69},
             :pressure=>1016,
             :humidity=>55,
             :dew_point=>290.19,
             :wind_speed=>2.68,
             :wind_deg=>202,
             :wind_gust=>3.47,
             :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
             :clouds=>0,
             :pop=>0,
             :uvi=>5.75}

    weather = FiveDayWeather.new(attrs)

    expect(weather.dt).to eq("2021-09-29 11:00:00 -0600")
    expect(weather.sunrise).to eq("2021-09-29 05:36:36 -0600")
    expect(weather.sunset).to eq("2021-09-29 17:29:06 -0600")
    expect(weather.max_temp).to eq(80.62)
    expect(weather.min_temp).to eq(59.92)
    expect(weather.conditions).to eq("clear sky")
    expect(weather.icon).to eq("01d")






  end 
end 