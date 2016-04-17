json.array!(@actuators) do |actuator|
  json.extract! actuator, :id, :name, :node_id, :actuatorType_id
  json.url actuator_url(actuator, format: :json)
end
