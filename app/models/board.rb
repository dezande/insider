class Board < ApplicationRecord
  belongs_to :subject

  enum step: [:init, :in_progress, :finish] 
end
