require 'rails_helper'

RSpec.describe UnsplashService do
  it 'can make a connection to external service' do
    connection = UnsplashService.conn('https://api.unsplash.com/search/photos')
    expect(connection).to be_an_instance_of(Faraday::Connection)
  end

  it 'can return photos', :vcr do 
    json = UnsplashService.get_image("denver")

    expect(json).to be_a Hash
    expect(json[:results]).to be_an Array
  end 
end 