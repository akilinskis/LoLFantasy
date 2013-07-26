class Match < ActiveRecord::Base
  belongs_to :league
  belongs_to :team1, :class_name => 'Team'
  belongs_to :team2, :class_name => 'Team'
  belongs_to :winner, :class_name => 'Team'
  belongs_to :loser, :class_name => 'Team'
end