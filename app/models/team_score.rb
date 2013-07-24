class TeamScore < ActiveRecord::Base
  belongs_to :pro_team
  belongs_to :game
  has_one :player_score_top, :class_name => 'PlayerScore'
  has_one :player_score_jungle, :class_name => 'PlayerScore'
  has_one :player_score_mid, :class_name => 'PlayerScore'
  has_one :player_score_ad_carry, :class_name => 'PlayerScore'
  has_one :player_score_support, :class_name => 'PlayerScore'
end