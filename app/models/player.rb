class Player < ApplicationRecord
  validates_presence_of :name

  has_many :board_players
end
