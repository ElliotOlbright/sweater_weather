require 'rails_helper'

describe "Forecast API" do
	describe "Happy path" do
		it "gets weather for a location", :vcr do
			headers = {'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json'}
			get '/api/v1/forecast?location=Boulder,co', headers: headers

			expect(response).to be_successful
			data = JSON.parse(response.body, symbolize_names: true)

			expect(response).to be_successful

			expect(data).to be_a(Hash)
			expect(data).to have_key(:data)
			expect(data[:data]).to be_a(Hash)
			expect(data[:data]).to have_key(:id)
			expect(data[:data][:id]).to eq(nil)
			expect(data[:data]).to have_key(:type)
			expect(data[:data][:type]).to eq('forecast')
			expect(data[:data]).to have_key(:attributes)
			expect(data[:data][:attributes]).to be_a(Hash)
		end
	end
end