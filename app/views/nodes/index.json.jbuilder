json.array!(@nodes) do |node|
  json.extract! node, :id, :name, :address, :home_id
  json.url node_url(node, format: :json)
end
