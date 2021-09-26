require 'rails_helper'

RSpec.describe WeatherService do
  it 'can make a connection to external service' do
    connection = WeatherService.conn('https://api.openweathermap.org/data/2.5/weather')
    expect(connection).to be_an_instance_of(Faraday::Connection)
  end

  it 'can get weather for a given destination', :vcr do
    json = WeatherService.get_weather('37.5858662', '-85.67330523')
    expect(json).to have_key(:current)
    expect(json[:current]).to be_a Hash

    expect(json).to have_key(:lat)
    expect(json[:lat]).to be_a Float

    expect(json).to have_key(:lon)
    expect(json[:lon]).to be_a Float

    expect(json).to have_key(:timezone)
    expect(json[:timezone]).to be_a String

    expect(json[:current]).to have_key(:sunrise)
    expect(json[:current][:sunrise]).to be_an Integer

    expect(json[:current]).to have_key(:sunset)
    expect(json[:current][:sunset]).to be_an Integer

    expect(json[:current]).to have_key(:temp)
    expect(json[:current][:temp]).to be_a Float
  end  
end
