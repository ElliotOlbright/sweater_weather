require 'rails_helper'

describe TripFacade, :vcr do
	describe "Class Methods" do
		it '::create_road_trip' do
			road_trip = TripFacade.create_road_trip("Denver,co", "Boulder,co")

			expect(road_trip).to be_an_instance_of(Trip)
		end
	end
end