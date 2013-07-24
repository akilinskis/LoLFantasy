class Game < ActiveRecord::Base
  has_one :team_score1, :class_name => 'TeamScore'
  has_one :team_score2, :class_name => 'TeamScore'
end