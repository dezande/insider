require 'rails_helper'

RSpec.describe Player, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:board_players) }
end
