class League < ActiveRecord::Base
  belongs_to :commissioner, :class_name => 'User'
  has_many :teams
  has_many :matches
end