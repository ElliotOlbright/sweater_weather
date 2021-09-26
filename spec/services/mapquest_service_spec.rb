require 'rails_helper'

RSpec.describe MapquestService do 
  context 'methods' do 
    context '::get_coordinates' do
      it 'can get a locations coordinates', :vcr do 
        json = MapquestService.get_coordinates("Telluride, co") 

        expect(json).to be_a Hash
        expect(json).to have_key(:info)
        expect(json).to have_key(:results)


        expect(json[:results][0]).to have_key(:locations)
        expect(json[:results][0][:locations]).to be_an Array
        expect(json[:results][0][:locations][0][:linkId]).to be_a String
      end 
    end 

    context '::travel_time' do 
      it 'can get estimated travel time', :vcr do 
        json = MapquestService.travel_time("telluride, co", "Denver, co")

        expect(json).to be_a Hash
        expect(json).to have_key(:route)
        expect(json[:route]).to have_key(:distance)
        expect(json[:route][:distance]).to be_a Float

        expect(json[:route]).to have_key(:formattedTime)
        expect(json[:route][:formattedTime]).to be_a String
      end 
    end 
  end 
end 