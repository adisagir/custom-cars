class ModelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :vehicle_id, :fabric_id, :sa_id, :name, :year, :style, :engine, :msrp, :specs, :drivetrain, :transmission
  belongs_to :user
  belongs_to :make
end