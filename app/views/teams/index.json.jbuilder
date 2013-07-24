json.array!(@teams) do |team|
  json.extract! team, :name, :handle, :user_id, :startingTop, :startingJungle, :startingMid, :startingADCarry, :startingSupport, :league_id, :locked
  json.url team_url(team, format: :json)
end
