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

  it 'can get 5 day forecast instance', :vcr do 
    weather =  WeatherFacade.get_5_day('37.5858662', '-85.67330523')
    expect(weather[0]).to be_an_instance_of(FiveDayWeather)
  end 

  it 'can get weather from location', :vcr do
    data = MapquestService.get_coordinates("denver, co") 
    coords = data[:results][0][:locations][0][:latLng]

    expect(coords[:lat]).to eq(39.738453)
    expect(coords[:lng]).to eq(-104.984853)

    json = WeatherService.get_weather(coords[:lat], coords[:lng])

    expect(json).to have_key(:current)
  end 

  it 'can fetch full forecast', :vcr do 
    WeatherFacade.fetch_forecast("denver, co")
  end 
end