class CreateBoardPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :board_players do |t|
      t.references :board, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.integer :role
      t.boolean :admin

      t.timestamps
    end
  end
end
