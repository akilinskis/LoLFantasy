json.array!(@leagues) do |league|
  json.extract! league, :private, :password, :commissioner_id, :type, :killPoints, :deathPoints, :assistPoints, :minionKills, :gameLength, :maxTeams
  json.url league_url(league, format: :json)
end
