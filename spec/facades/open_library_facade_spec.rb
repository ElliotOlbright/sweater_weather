require 'rails_helper'

RSpec.describe OpenLibraryFacade do
  it 'can create a books instance', :vcr do 
    books = OpenLibraryFacade.get_books("Denver, co", 2)
    books.each do |book|
      expect(book).to be_an_instance_of(OpenLibrary)
    end 
  end 

  it 'can return books and weather', :vcr do 
    data =  OpenLibraryFacade.get_book_forecast("Denver,co",2)
    expect(data.books[0]).to be_an_instance_of(OpenLibrary)
  end 
end 