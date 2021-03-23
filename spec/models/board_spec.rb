require 'rails_helper'

RSpec.describe Board, type: :model do
  it do
    should define_enum_for(:step)
      .with_values([:init, :in_progress, :finish])
  end
  it { should belong_to(:subject) }
  it { should have_many(:board_players) }
end
