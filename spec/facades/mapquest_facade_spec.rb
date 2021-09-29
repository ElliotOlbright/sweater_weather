require 'rails_helper'

describe MapquestFacade, :vcr do
	describe "Class Methods" do
		describe '::travel_time' do
			it 'should return travel times', :vcr do
				travel_time = MapquestFacade.travel_time("Denver,co", "Boulder,co")

				expect(travel_time).to be_a(Hash)
				expect(travel_time.keys).to eq([:formatted_time, :unix_time])
				expect(travel_time[:formatted_time]).to be_a(String)
				expect(travel_time[:unix_time]).to be_a(Numeric)
			end
		end
	end
end