require 'rails_helper'

RSpec.describe OpenLibraryFacade do
  it 'can create a books instance', :vcr do 
    books = OpenLibraryFacade.get_books("Denver, co")
    expect(books).to be_an_instance_of(OpenLibrary)
  end 
end 