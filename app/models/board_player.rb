class BoardPlayer < ApplicationRecord
  belongs_to :board
  belongs_to :player

  enum role: [:commons, :master, :insider]
end
