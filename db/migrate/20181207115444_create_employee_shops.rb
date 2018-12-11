class CreateEmployeeShops < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_shops do |t|
      t.integer :distance
      t.integer :employee_id
      t.integer :shop_id

      t.timestamps
    end
  end
end
