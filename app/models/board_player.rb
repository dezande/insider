class BoardPlayer < ApplicationRecord
  belongs_to :board
  belongs_to :player
  has_many :proposals

  enum role: [:commons, :master, :insider]
end
