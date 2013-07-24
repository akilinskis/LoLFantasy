json.array!(@free_agents) do |free_agent|
  json.extract! free_agent, :league_id
  json.url free_agent_url(free_agent, format: :json)
end
