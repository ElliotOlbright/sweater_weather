require 'rails_helper'

RSpec.describe WeatherFacade do
  it 'can create current weather instance', :vcr do

    weather = WeatherFacade.get_current('37.5858662', '-85.67330523')
    expect(weather).to be_an_instance_of(CurrentWeather)
  end

  it 'can create hourly weather instance', :vcr do 
    weather = WeatherFacade.get_hourly('37.5858662', '-85.67330523')
    expect(weather[0]).to be_an_instance_of(HourlyWeather)
  end 
end