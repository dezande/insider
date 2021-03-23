class Subject < ApplicationRecord
  has_many :boards

  validates :word, presence: true, uniqueness: true

  scope :random, -> { order(Arel.sql('RANDOM()')).first }
end
