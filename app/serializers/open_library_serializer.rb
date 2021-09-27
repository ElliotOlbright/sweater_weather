class OpenLibrarySerializer
  include FastJsonapi::ObjectSerializer
  attributes :destination, :forecast, :total_books, :books
end