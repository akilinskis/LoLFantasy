class Match < ActiveRecord::Base
  belongs_to :league
  has_one :team1, :class_name => 'Team'
  has_one :team2, :class_name => 'Team'
  has_one :winner, :class_name => 'Team'
  has_one :loser, :class_name => 'Team'
end