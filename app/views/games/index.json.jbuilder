json.array!(@games) do |game|
  json.extract! game, :week, :season, :split, :duration, :teamScore1_id, :teamScore2_id
  json.url game_url(game, format: :json)
end
