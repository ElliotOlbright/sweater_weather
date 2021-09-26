require 'rails_helper'

RSpec.describe Weather do 
  it 'exists and has attributes' do 
    attrs = {:lat=>37.5859,
             :lon=>-85.6733,
             :timezone=>"America/New_York",
             :timezone_offset=>-14400,
             :current=>
             {:dt=>1632677031,
               :sunrise=>1632656043,
               :sunset=>1632699224,
               :temp=>294.89,
               :feels_like=>294.43,
               :pressure=>1020,
               :humidity=>50,
               :dew_point=>284.02,
               :uvi=>5.54,
               :clouds=>1,
               :visibility=>10000,
               :wind_speed=>2.9,
               :wind_deg=>228,
               :wind_gust=>3.23,
               :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}]}}

    weather = Weather.new(attrs)

    expect(weather.conditions).to eq("clear sky")
    expect(weather.feels_like).to eq(70.3)
    expect(weather.humidity).to eq(50)
    expect(weather.icon).to eq("01d")
    expect(weather.lat).to eq(37.5859)
    expect(weather.lon).to eq(-85.6733)
    expect(weather.sunrise).to eq("2021-09-26 05:34:03 -0600")
    expect(weather.sunset).to eq("2021-09-26 17:33:44 -0600")
    expect(weather.temp).to eq(71.13)
    expect(weather.timezone).to eq("America/New_York")
    expect(weather.uvi).to eq(5.54)
    expect(weather.visibility).to eq(10000)
  end 
end 