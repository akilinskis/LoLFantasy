class PlayerScore < ActiveRecord::Base
  belongs_to :team_score
  belongs_to :player
end