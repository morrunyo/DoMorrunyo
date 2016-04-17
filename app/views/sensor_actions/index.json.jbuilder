json.array!(@sensor_actions) do |sensor_action|
  json.extract! sensor_action, :id, :name, :sensorType_id, :action
  json.url sensor_action_url(sensor_action, format: :json)
end
