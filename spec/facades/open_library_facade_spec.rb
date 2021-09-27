require 'rails_helper'

RSpec.describe OpenLibraryFacade do
  it 'can create a books instance', :vcr do 
    books = OpenLibraryFacade.get_books("Denver, co", 2)
    books.each do |book|
      expect(book).to be_an_instance_of(OpenLibrary)
    end 
  end 
end 