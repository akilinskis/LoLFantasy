json.array!(@waiver_claims) do |waiver_claim|
  json.extract! waiver_claim, :player_id, :team_id
  json.url waiver_claim_url(waiver_claim, format: :json)
end
