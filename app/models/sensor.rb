class Sensor < ActiveRecord::Base
  belongs_to :node
  belongs_to :sensorType
end
