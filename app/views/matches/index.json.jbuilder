json.array!(@matches) do |match|
  json.extract! match, :league_id, :week, :season, :split, :team1_id, :team2_id, :team1Score, :team2Score, :winner_id
  json.url match_url(match, format: :json)
end
