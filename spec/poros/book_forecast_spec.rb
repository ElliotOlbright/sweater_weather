require 'rails_helper' 

RSpec.describe "BookForecast" do 
  it 'exeists and has attributes' do 
    attrs = {:key=>"/works/OL8503198W",
              :text=>["/works/OL8503198W", "Denver, Co", "OL10909613M", "9780762507849", "0762507845", "Universal Map Enterprises", "OL2843451A", "Universal Map"],
              :type=>"work",
              :seed=>["/books/OL10909613M", "/works/OL8503198W", "/authors/OL2843451A"],
              :title=>"Denver, Co",
              :title_suggest=>"Denver, Co",
              :has_fulltext=>false,
              :edition_count=>1,
              :edition_key=>["OL10909613M"],
              :publish_date=>["January 2001"],
              :publish_year=>[2001],
              :first_publish_year=>2001,
              :isbn=>["9780762507849", "0762507845"],
              :last_modified_i=>1338943517,
              :ebook_count_i=>0,
              :publisher=>["Universal Map Enterprises"],
              :language=>["eng"],
              :author_key=>["OL2843451A"],
              :author_name=>["Universal Map"],
              :publisher_facet=>["Universal Map Enterprises"],
              :_version_=>1700720295581581317,
              :author_facet=>["OL2843451A Universal Map"]}

    weather = {:lat=>37.5859,
      :lon=>-85.6733,
      :timezone=>"America/New_York",
      :timezone_offset=>-14400,
      :current=>
      {:dt=>1632677031,
        :sunrise=>1632656043,
        :sunset=>1632699224,
        :temp=>294.89,
        :feels_like=>294.43,
        :pressure=>1020,
        :humidity=>50,
        :dew_point=>284.02,
        :uvi=>5.54,
        :clouds=>1,
        :visibility=>10000,
        :wind_speed=>2.9,
        :wind_deg=>228,
        :wind_gust=>3.23,
        :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}]}}

    book = BookForecast.new(attrs, weather, "Denver, co")

    expect(book.destination).to eq("Denver, co")
    expect(book.title).to eq("Denver, Co")
    expect(book.isbn).to eq()["9780762507849", "0762507845"]
  end 
end 