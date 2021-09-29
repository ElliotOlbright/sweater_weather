class UnsplashSerializer
  include FastJsonapi::ObjectSerializer
  set_type :image
  attributes :image
end
