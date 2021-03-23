FactoryBot.define do
  factory :board_player do
    board { nil }
    player { nil }
    role { 1 }
    admin { false }
  end
end
