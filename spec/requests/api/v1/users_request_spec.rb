require 'rails_helper'

describe "Users API" do
	describe "Happy path" do
		it "creates a new user" do
			headers = {'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json'}

			body = {
							"email": "test@example.com",
							"password": "password",
							"password_confirmation": "password"
						}

			post '/api/v1/users', headers: headers, params: body.to_json

			user  = JSON.parse(response.body, symbolize_names: true)

			expect(response).to be_successful
			expect(response.status).to eq(201)

			expect(user).to be_a Hash
			expect(user[:data].keys).to eq([:id, :type, :attributes])
			expect(user[:data][:id]).to eq(User.last.id.to_s)
			expect(user[:data][:type]).to eq("users")
			expect(user[:data][:attributes]).to be_a Hash
			expect(user[:data][:attributes][:email]).to be_a String
			expect(user[:data][:attributes][:email]).to eq(User.last.email)
			expect(user[:data][:attributes][:api_key]).to be_a String
			expect(user[:data][:attributes][:api_key]).to eq(User.last.api_key)
		end
	end
end 