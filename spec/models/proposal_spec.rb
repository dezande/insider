require 'rails_helper'

RSpec.describe Proposal, type: :model do
  it { should belong_to(:board_player) }
end
