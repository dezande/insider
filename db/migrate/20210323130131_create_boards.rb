class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.datetime :end_time
      t.integer :step, defaults: 0
      t.references :subject

      t.timestamps
    end
  end
end
