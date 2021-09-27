class Api::V1::BookSearchController < ApplicationController
  def index
    book_forecast = OpenLibraryFacade.get_book_forecast(params[:location],params[:quantity])

    render json: OpenLibrarySerializer.new(book_forecast)
  end
end