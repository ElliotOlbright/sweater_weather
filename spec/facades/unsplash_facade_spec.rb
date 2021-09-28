require 'rails_helper'

RSpec.describe UnsplashFacade do 
  it 'exists and has attributes', :vcr do
    images =  UnsplashFacade.get_image("Denver")
    expect(images).to be_an_instance_of(Unsplash)
  end 
end 
  