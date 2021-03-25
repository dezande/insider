class CreateProposals < ActiveRecord::Migration[6.1]
  def change
    create_table :proposals do |t|
      t.string :word
      t.references :board_player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
