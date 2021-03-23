class Subject < ApplicationRecord
  has_many :boards, dependent: :restrict_with_exception
  has_many :proposals, through: :board_players

  validates :word, presence: true, uniqueness: true

  scope :random, -> { order(Arel.sql('RANDOM()')).first }
end
