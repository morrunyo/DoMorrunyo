class SensorType < ActiveRecord::Base
  has_many :sensors
  has_many :sensor_actions
end
