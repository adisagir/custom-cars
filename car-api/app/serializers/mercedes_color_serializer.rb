class MercedesColorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :color_code, :color_link
  belongs_to :model
end
