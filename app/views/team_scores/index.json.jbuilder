json.array!(@team_scores) do |team_score|
  json.extract! team_score, :pro_team_id, :game_id, :playerScoreTop, :playerScoreJungle, :playerScoreMid, :playerScoreADCarry, :playerScoreSupport
  json.url team_score_url(team_score, format: :json)
end
