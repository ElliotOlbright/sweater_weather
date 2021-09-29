require 'rails_helper'

RSpec.describe Unsplash do 
  it 'exists and has attributes' do 
    attrs = {:id=>"r82eni3j0bI",
             :created_at=>"2020-09-06T12:05:36-04:00",
             :updated_at=>"2021-09-28T16:19:02-04:00",
             :promoted_at=>nil,
             :width=>4862,
             :height=>3646,
             :color=>"#0c59c0",
             :blur_hash=>"LhC*9MtlR*V@KUazoekCIwWYaKa#",
             :description=>"Downtown Denver and Capitol Building",
             :alt_description=>"white and gold dome building",
             :urls=>
             {:raw=>"https://images.unsplash.com/photo-1599408169542-620fc453382c?ixid=MnwyNjM5NDF8MHwxfHNlYXJjaHwxfHxEZW52ZXJ8ZW58MHx8fHwxNjMyODcwNTI1&ixlib=rb-1.2.1",
               :full=>
               "https://images.unsplash.com/photo-1599408169542-620fc453382c?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyNjM5NDF8MHwxfHNlYXJjaHwxfHxEZW52ZXJ8ZW58MHx8fHwxNjMyODcwNTI1&ixlib=rb-1.2.1&q=85",
               :regular=>
               "https://images.unsplash.com/photo-1599408169542-620fc453382c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjM5NDF8MHwxfHNlYXJjaHwxfHxEZW52ZXJ8ZW58MHx8fHwxNjMyODcwNTI1&ixlib=rb-1.2.1&q=80&w=1080",
               :small=>
               "https://images.unsplash.com/photo-1599408169542-620fc453382c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjM5NDF8MHwxfHNlYXJjaHwxfHxEZW52ZXJ8ZW58MHx8fHwxNjMyODcwNTI1&ixlib=rb-1.2.1&q=80&w=400",
               :thumb=>
               "https://images.unsplash.com/photo-1599408169542-620fc453382c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjM5NDF8MHwxfHNlYXJjaHwxfHxEZW52ZXJ8ZW58MHx8fHwxNjMyODcwNTI1&ixlib=rb-1.2.1&q=80&w=200"},
             :links=>
             {:self=>"https://api.unsplash.com/photos/r82eni3j0bI",
               :html=>"https://unsplash.com/photos/r82eni3j0bI",
               :download=>"https://unsplash.com/photos/r82eni3j0bI/download",
               :download_location=>"https://api.unsplash.com/photos/r82eni3j0bI/download?ixid=MnwyNjM5NDF8MHwxfHNlYXJjaHwxfHxEZW52ZXJ8ZW58MHx8fHwxNjMyODcwNTI1"},
             :categories=>[],
             :likes=>21,
             :liked_by_user=>false,
             :current_user_collections=>[],
             :sponsorship=>nil,
             :topic_submissions=>{},
             :user=>
             {:id=>"iReUjmhpLcw",
               :updated_at=>"2021-09-28T16:52:30-04:00",
               :username=>"andrewcoop",
               :name=>"Andrew Coop",
               :first_name=>"Andrew",
               :last_name=>"Coop",
               :twitter_username=>nil,
               :portfolio_url=>nil,
               :bio=>
               "I'm an amateur who likes to shoot just about everything that looks interesting.  I want to get more experience with portraiture, and will shoot personal photos for anyone for free.  Where possible, attribution is appreciated please and thank you.",
               :location=>"Aurora, CO, USA",
               :links=>
               {:self=>"https://api.unsplash.com/users/andrewcoop",
                 :html=>"https://unsplash.com/@andrewcoop",
                 :photos=>"https://api.unsplash.com/users/andrewcoop/photos",
                 :likes=>"https://api.unsplash.com/users/andrewcoop/likes",
                 :portfolio=>"https://api.unsplash.com/users/andrewcoop/portfolio",
                 :following=>"https://api.unsplash.com/users/andrewcoop/following",
                 :followers=>"https://api.unsplash.com/users/andrewcoop/followers"}}}

    location = "denver, co"
    image = Unsplash.new(attrs, location)

    expect(image.location).to eq("denver, co")
    expect(image.description).to eq("Downtown Denver and Capitol Building")
    expect(image.image_url).to eq("https://images.unsplash.com/photo-1599408169542-620fc453382c?ixid=MnwyNjM5NDF8MHwxfHNlYXJjaHwxfHxEZW52ZXJ8ZW58MHx8fHwxNjMyODcwNTI1&ixlib=rb-1.2.1")
    expect(image.source).to eq("unsplash.com")
    expect(image.author).to eq("andrewcoop")
  end 
end 