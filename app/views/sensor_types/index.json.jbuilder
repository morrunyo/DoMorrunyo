json.array!(@sensor_types) do |sensor_type|
  json.extract! sensor_type, :id, :name
  json.url sensor_type_url(sensor_type, format: :json)
end
