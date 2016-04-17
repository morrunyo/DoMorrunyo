class AddSensorTypeToSensor < ActiveRecord::Migration
  def change
    add_reference :sensors, :sensorType, index: true, foreign_key: true
  end
end
