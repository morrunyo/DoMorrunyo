json.array!(@homes) do |home|
  json.extract! home, :id, :name, :node_id
  json.url home_url(home, format: :json)
end
