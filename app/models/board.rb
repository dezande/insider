class Board < ApplicationRecord
  belongs_to :subject
  has_many :board_players

  enum step: [:init, :in_progress, :finish] 
end
