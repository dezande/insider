require 'rails_helper'

RSpec.describe Subject, type: :model do
  it { should validate_presence_of(:word) }
  it { should validate_uniqueness_of(:word) }
  it { should have_many(:boards) }
  it { should have_many(:proposals).through(:board_players) }
end
