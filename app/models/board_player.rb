class BoardPlayer < ApplicationRecord
  belongs_to :board
  belongs_to :player
  has_many :proposals, dependent: :destroy

  enum role: [:commons, :master, :insider]
end
