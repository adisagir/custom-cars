class MakeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :country
end