require 'rails_helper' 

RSpec.describe OpenLibraryService do
  it 'can make a connection to an external service' do
    connection = OpenLibraryService.conn('http://openlibrary.org/search.json')
    expect(connection).to be_an_instance_of(Faraday::Connection)
  end 

  it 'can search for books based on key words', :vcr do
    json = OpenLibraryService.get_books('denver,co', 2)


    expect(json).to have_key(:docs)
    expect(json[:docs]).to be_an Array

    expect(json[:docs][0]).to have_key(:title)
    expect(json[:docs][0][:title]).to be_a String

    expect(json[:docs][0]).to have_key(:isbn)
    expect(json[:docs][0][:isbn]).to be_an Array

    expect(json[:docs][0]).to have_key(:publisher)
    expect(json[:docs][0][:publisher][0]).to be_a String
  end 
end 