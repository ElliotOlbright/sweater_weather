require 'rails_helper' 

RSpec.describe OpenLibraryService do
  it 'can make a connection to an external service' do
    connection = OpenLibraryService.conn('http://openlibrary.org/search.json')
    expect(connection).to be_an_instance_of(Faraday::Connection)
  end 
end 