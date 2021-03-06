class Api::V1::BackgroundsController < ApplicationController
	def index
    image = UnsplashFacade.get_image(params[:location])

    render json: UnsplashSerializer.new(image)
  end
end
