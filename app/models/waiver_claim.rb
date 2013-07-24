class WaiverClaim < ActiveRecord::Base
  belongs_to :player
  belongs_to :dropping_player, :class_name => 'Player'
  belongs_to :team
end