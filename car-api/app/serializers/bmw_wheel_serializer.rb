class BmwWheelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :wheel_link, :wheel_code, :wheel_name
  belongs_to :model
end
