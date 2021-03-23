class Subject < ApplicationRecord
  validates :word, presence: true, uniqueness: true
end
