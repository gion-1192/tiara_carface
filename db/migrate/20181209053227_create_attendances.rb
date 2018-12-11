class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.integer :employee_id
      t.integer :move_id
      t.date :date

      t.timestamps
    end
  end
end
