json.array!(@players) do |player|
  json.extract! player, :name, :image_url, :position, :pro_team_id
  json.url player_url(player, format: :json)
end
