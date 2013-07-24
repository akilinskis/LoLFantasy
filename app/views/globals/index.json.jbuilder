json.array!(@globals) do |global|
  json.extract! global, :current_season, :current_split, :current_week
  json.url global_url(global, format: :json)
end
