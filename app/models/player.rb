class Player < ActiveRecord::Base
  belongs_to :pro_team
  has_many :player_scores
  has_and_belongs_to_many :free_agents
end