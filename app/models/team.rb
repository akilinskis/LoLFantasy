class Team < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  belongs_to :league
  belongs_to :starting_top, :class_name => 'Player'
  belongs_to :starting_jungle, :class_name => 'Player'
  belongs_to :starting_mid, :class_name => 'Player'
  belongs_to :starting_ad_carry, :class_name => 'Player'
  belongs_to :starting_support, :class_name => 'Player'
  has_many :bench_players, :class_name => 'Player'
  has_many :waiver_claims
end