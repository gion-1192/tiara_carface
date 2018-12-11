class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
      t.integer :place1_id
      t.integer :place2_id
      t.integer :distance
      t.integer :record_store_id

      t.timestamps
    end
  end
end
