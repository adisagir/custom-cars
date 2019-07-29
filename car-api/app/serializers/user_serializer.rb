class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_link, :vehicle_nickname
end