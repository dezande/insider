class Subject < ApplicationRecord
  has_many :boards
  has_many :proposals, through: :board_players

  validates :word, presence: true, uniqueness: true

  scope :random, -> { order(Arel.sql('RANDOM()')).first }
end
