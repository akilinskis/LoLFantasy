json.array!(@player_scores) do |player_score|
  json.extract! player_score, :game_id, :player_id, :kills, :deaths, :assists, :minions
  json.url player_score_url(player_score, format: :json)
end
