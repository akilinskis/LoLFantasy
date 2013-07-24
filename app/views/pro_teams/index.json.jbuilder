json.array!(@pro_teams) do |pro_team|
  json.extract! pro_team, :name, :handle, :image_url
  json.url pro_team_url(pro_team, format: :json)
end
