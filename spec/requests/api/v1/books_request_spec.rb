require 'rails_helper'

describe "Books API" do
  it "sends a list of books and weather", :vcr do

    get '/api/v1/book_search?location=denver,co&quantity=25'

    expect(response).to be_successful

    books = JSON.parse(response.body)
    expect(books[:attributes][:books].count).to eq(25)
  end
end